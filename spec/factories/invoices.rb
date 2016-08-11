FactoryGirl.define do
  factory :invoice do
    company nil
    invoice_number "MyString"
    issue_date "2016-08-11"
    due_date "2016-08-11"
    paid false
    sales_tax_applicable false
    emailed_to_client false
    purchase_order_number "MyString"
    invoice_line_item nil
  end
end
