require 'rails_helper'

RSpec.describe "clientes/edit", type: :view do
  before(:each) do
    @cliente = assign(:cliente, Cliente.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cidade => "MyString",
      :CEP => "MyString",
      :UF => "MyString",
      :CNPJ => "MyString",
      :IE => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do

      assert_select "input[name=?]", "cliente[nome]"

      assert_select "input[name=?]", "cliente[endereco]"

      assert_select "input[name=?]", "cliente[cidade]"

      assert_select "input[name=?]", "cliente[CEP]"

      assert_select "input[name=?]", "cliente[UF]"

      assert_select "input[name=?]", "cliente[CNPJ]"

      assert_select "input[name=?]", "cliente[IE]"
    end
  end
end
