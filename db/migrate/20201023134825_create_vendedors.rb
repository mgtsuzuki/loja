class CreateVendedors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendedors do |t|
      t.string :nome
      t.decimal :salario
      t.string :faixacomissao

      t.timestamps
    end
  end
end
