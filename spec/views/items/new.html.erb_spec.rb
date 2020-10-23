require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :quantidade => 1,
      :produto => nil,
      :pedido => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[quantidade]"

      assert_select "input[name=?]", "item[produto_id]"

      assert_select "input[name=?]", "item[pedido_id]"
    end
  end
end
