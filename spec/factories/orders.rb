FactoryGirl.define do
  factory :order do
    invoice_line_item nil
    delivery_status "MyString"
    customer_comments "MyText"
    customer_uploaded_file "MyString"
    send_confirmation_emails_to_recipients false
    order_number "MyString"
    user nil
    total_order_weight "9.99"
    wcsi_total_order_cost "9.99"
    customer_total_order_cost_pre_tax "9.99"
    any_taxable_shipments false
    total_tax_on_order "9.99"
    customer_total_order_cost_with_tax "9.99"
  end
end
