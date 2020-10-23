require 'rails_helper'

RSpec.describe "pedidos/new", type: :view do
  before(:each) do
    assign(:pedido, Pedido.new(
      :numpedido => 1,
      :prazoentrega => 1,
      :vendedor => nil,
      :cliente => nil
    ))
  end

  it "renders new pedido form" do
    render

    assert_select "form[action=?][method=?]", pedidos_path, "post" do

      assert_select "input[name=?]", "pedido[numpedido]"

      assert_select "input[name=?]", "pedido[prazoentrega]"

      assert_select "input[name=?]", "pedido[vendedor_id]"

      assert_select "input[name=?]", "pedido[cliente_id]"
    end
  end
end
