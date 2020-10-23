require 'rails_helper'

RSpec.describe "produtos/show", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :descricao => "Descricao",
      :unidade => "Unidade",
      :valunit => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/Unidade/)
    expect(rendered).to match(/9.99/)
  end
end
