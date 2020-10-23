class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :unidade
      t.decimal :valunit

      t.timestamps
    end
  end
end
