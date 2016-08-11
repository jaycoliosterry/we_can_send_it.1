require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :invoice_line_item => nil,
      :delivery_status => "Delivery Status",
      :customer_comments => "MyText",
      :customer_uploaded_file => "Customer Uploaded File",
      :send_confirmation_emails_to_recipients => false,
      :order_number => "Order Number",
      :user => nil,
      :total_order_weight => "9.99",
      :wcsi_total_order_cost => "9.99",
      :customer_total_order_cost_pre_tax => "9.99",
      :any_taxable_shipments => false,
      :total_tax_on_order => "9.99",
      :customer_total_order_cost_with_tax => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Delivery Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Customer Uploaded File/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Order Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
