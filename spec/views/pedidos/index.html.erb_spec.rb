require 'rails_helper'

RSpec.describe "pedidos/index", type: :view do
  before(:each) do
    assign(:pedidos, [
      Pedido.create!(
        :numpedido => 2,
        :prazoentrega => 3,
        :vendedor => nil,
        :cliente => nil
      ),
      Pedido.create!(
        :numpedido => 2,
        :prazoentrega => 3,
        :vendedor => nil,
        :cliente => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
