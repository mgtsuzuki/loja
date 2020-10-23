require 'rails_helper'

RSpec.describe "produtos/new", type: :view do
  before(:each) do
    assign(:produto, Produto.new(
      :descricao => "MyString",
      :unidade => "MyString",
      :valunit => "9.99"
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input[name=?]", "produto[descricao]"

      assert_select "input[name=?]", "produto[unidade]"

      assert_select "input[name=?]", "produto[valunit]"
    end
  end
end
