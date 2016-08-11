require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :company => nil,
      :invoice_number => "Invoice Number",
      :paid => false,
      :sales_tax_applicable => false,
      :emailed_to_client => false,
      :purchase_order_number => "Purchase Order Number",
      :invoice_line_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Invoice Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Purchase Order Number/)
    expect(rendered).to match(//)
  end
end
