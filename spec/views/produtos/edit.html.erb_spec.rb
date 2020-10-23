require 'rails_helper'

RSpec.describe "produtos/edit", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :descricao => "MyString",
      :unidade => "MyString",
      :valunit => "9.99"
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input[name=?]", "produto[descricao]"

      assert_select "input[name=?]", "produto[unidade]"

      assert_select "input[name=?]", "produto[valunit]"
    end
  end
end
