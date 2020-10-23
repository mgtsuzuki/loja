require 'rails_helper'

RSpec.describe "vendedors/index", type: :view do
  before(:each) do
    assign(:vendedors, [
      Vendedor.create!(
        :nome => "Nome",
        :salario => "9.99",
        :faixacomissao => "Faixacomissao"
      ),
      Vendedor.create!(
        :nome => "Nome",
        :salario => "9.99",
        :faixacomissao => "Faixacomissao"
      )
    ])
  end

  it "renders a list of vendedors" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Faixacomissao".to_s, :count => 2
  end
end
