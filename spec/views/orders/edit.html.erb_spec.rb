require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :invoice_line_item => nil,
      :delivery_status => "MyString",
      :customer_comments => "MyText",
      :customer_uploaded_file => "MyString",
      :send_confirmation_emails_to_recipients => false,
      :order_number => "MyString",
      :user => nil,
      :total_order_weight => "9.99",
      :wcsi_total_order_cost => "9.99",
      :customer_total_order_cost_pre_tax => "9.99",
      :any_taxable_shipments => false,
      :total_tax_on_order => "9.99",
      :customer_total_order_cost_with_tax => "9.99"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_invoice_line_item_id[name=?]", "order[invoice_line_item_id]"

      assert_select "input#order_delivery_status[name=?]", "order[delivery_status]"

      assert_select "textarea#order_customer_comments[name=?]", "order[customer_comments]"

      assert_select "input#order_customer_uploaded_file[name=?]", "order[customer_uploaded_file]"

      assert_select "input#order_send_confirmation_emails_to_recipients[name=?]", "order[send_confirmation_emails_to_recipients]"

      assert_select "input#order_order_number[name=?]", "order[order_number]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_total_order_weight[name=?]", "order[total_order_weight]"

      assert_select "input#order_wcsi_total_order_cost[name=?]", "order[wcsi_total_order_cost]"

      assert_select "input#order_customer_total_order_cost_pre_tax[name=?]", "order[customer_total_order_cost_pre_tax]"

      assert_select "input#order_any_taxable_shipments[name=?]", "order[any_taxable_shipments]"

      assert_select "input#order_total_tax_on_order[name=?]", "order[total_tax_on_order]"

      assert_select "input#order_customer_total_order_cost_with_tax[name=?]", "order[customer_total_order_cost_with_tax]"
    end
  end
end
