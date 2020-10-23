require 'rails_helper'

RSpec.describe "pedidos/edit", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :numpedido => 1,
      :prazoentrega => 1,
      :vendedor => nil,
      :cliente => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do

      assert_select "input[name=?]", "pedido[numpedido]"

      assert_select "input[name=?]", "pedido[prazoentrega]"

      assert_select "input[name=?]", "pedido[vendedor_id]"

      assert_select "input[name=?]", "pedido[cliente_id]"
    end
  end
end
