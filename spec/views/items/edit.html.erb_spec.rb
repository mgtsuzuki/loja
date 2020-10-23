require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :quantidade => 1,
      :produto => nil,
      :pedido => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[quantidade]"

      assert_select "input[name=?]", "item[produto_id]"

      assert_select "input[name=?]", "item[pedido_id]"
    end
  end
end
