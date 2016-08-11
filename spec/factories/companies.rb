FactoryGirl.define do
  factory :company do
    wcsi_admin false
    company_name "MyString"
    user_admin_id 1
    department "MyString"
    shipping_address_line_1 "MyText"
    shipping_address_line_2 "MyText"
    shipping_postcode_or_zip "MyString"
    shipping_city "MyString"
    shipping_state_or_region "MyString"
    shipping_country_id 1
    billing_address_line_1 "MyText"
    billing_address_line_2 "MyText"
    billing_city "MyString"
    billing_state_or_region "MyString"
    billing_country_id 1
    express_courier_rate_id 1
    economy_courier_rate_id 1
    postal_courier_rate_id 1
    billing_email_address "MyString"
    main_telephone_number "MyString"
    user nil
    invoice_line_item nil
  end
end
