require 'rails_helper'

RSpec.describe "clientes/show", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cidade => "Cidade",
      :CEP => "Cep",
      :UF => "Uf",
      :CNPJ => "Cnpj",
      :IE => "Ie"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Ie/)
  end
end
