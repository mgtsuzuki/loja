require 'rails_helper'

RSpec.describe "pedidos/show", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :numpedido => 2,
      :prazoentrega => 3,
      :vendedor => nil,
      :cliente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
