require 'rails_helper'

RSpec.describe "clientes/index", type: :view do
  before(:each) do
    assign(:clientes, [
      Cliente.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :CEP => "Cep",
        :UF => "Uf",
        :CNPJ => "Cnpj",
        :IE => "Ie"
      ),
      Cliente.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cidade => "Cidade",
        :CEP => "Cep",
        :UF => "Uf",
        :CNPJ => "Cnpj",
        :IE => "Ie"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Ie".to_s, :count => 2
  end
end
