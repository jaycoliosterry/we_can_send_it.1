require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :company => nil,
      :invoice_number => "MyString",
      :paid => false,
      :sales_tax_applicable => false,
      :emailed_to_client => false,
      :purchase_order_number => "MyString",
      :invoice_line_item => nil
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input#invoice_company_id[name=?]", "invoice[company_id]"

      assert_select "input#invoice_invoice_number[name=?]", "invoice[invoice_number]"

      assert_select "input#invoice_paid[name=?]", "invoice[paid]"

      assert_select "input#invoice_sales_tax_applicable[name=?]", "invoice[sales_tax_applicable]"

      assert_select "input#invoice_emailed_to_client[name=?]", "invoice[emailed_to_client]"

      assert_select "input#invoice_purchase_order_number[name=?]", "invoice[purchase_order_number]"

      assert_select "input#invoice_invoice_line_item_id[name=?]", "invoice[invoice_line_item_id]"
    end
  end
end
