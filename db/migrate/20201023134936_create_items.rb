class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :quantidade
      t.references :produto, null: false, foreign_key: true
      t.belongs_to :pedido, null: false, foreign_key: true

      t.timestamps
    end
  end
end
