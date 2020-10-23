require 'rails_helper'

RSpec.describe "vendedors/edit", type: :view do
  before(:each) do
    @vendedor = assign(:vendedor, Vendedor.create!(
      :nome => "MyString",
      :salario => "9.99",
      :faixacomissao => "MyString"
    ))
  end

  it "renders the edit vendedor form" do
    render

    assert_select "form[action=?][method=?]", vendedor_path(@vendedor), "post" do

      assert_select "input[name=?]", "vendedor[nome]"

      assert_select "input[name=?]", "vendedor[salario]"

      assert_select "input[name=?]", "vendedor[faixacomissao]"
    end
  end
end
