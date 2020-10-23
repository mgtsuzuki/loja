class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :cidade
      t.string :CEP
      t.string :UF
      t.string :CNPJ
      t.string :IE

      t.timestamps
    end
  end
end
