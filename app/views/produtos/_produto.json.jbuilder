json.extract! produto, :id, :descricao, :unidade, :valunit, :created_at, :updated_at
json.url produto_url(produto, format: :json)
