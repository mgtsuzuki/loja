json.extract! cliente, :id, :nome, :endereco, :cidade, :CEP, :UF, :CNPJ, :IE, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
