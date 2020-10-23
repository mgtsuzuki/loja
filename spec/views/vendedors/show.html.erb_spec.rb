require 'rails_helper'

RSpec.describe "vendedors/show", type: :view do
  before(:each) do
    @vendedor = assign(:vendedor, Vendedor.create!(
      :nome => "Nome",
      :salario => "9.99",
      :faixacomissao => "Faixacomissao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Faixacomissao/)
  end
end
