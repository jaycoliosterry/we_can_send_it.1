require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :company => nil,
        :invoice_number => "Invoice Number",
        :paid => false,
        :sales_tax_applicable => false,
        :emailed_to_client => false,
        :purchase_order_number => "Purchase Order Number",
        :invoice_line_item => nil
      ),
      Invoice.create!(
        :company => nil,
        :invoice_number => "Invoice Number",
        :paid => false,
        :sales_tax_applicable => false,
        :emailed_to_client => false,
        :purchase_order_number => "Purchase Order Number",
        :invoice_line_item => nil
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Invoice Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Purchase Order Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
