require 'rails_helper'

RSpec.describe "vendedors/new", type: :view do
  before(:each) do
    assign(:vendedor, Vendedor.new(
      :nome => "MyString",
      :salario => "9.99",
      :faixacomissao => "MyString"
    ))
  end

  it "renders new vendedor form" do
    render

    assert_select "form[action=?][method=?]", vendedors_path, "post" do

      assert_select "input[name=?]", "vendedor[nome]"

      assert_select "input[name=?]", "vendedor[salario]"

      assert_select "input[name=?]", "vendedor[faixacomissao]"
    end
  end
end
