require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
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
      ),
      Order.create!(
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
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Uploaded File".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Order Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
