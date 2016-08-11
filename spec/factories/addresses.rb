FactoryGirl.define do
  factory :address do
    receiver_company_id 1
    receiver_company_name "MyString"
    receiver_company_contact_name "MyString"
    address_book_id 1
    addressbook nil
    address_line_1 "MyString"
    address_line_2 "MyString"
    zip_or_postcode "MyString"
    city "MyString"
    state_or_region "MyString"
    country_id 1
    brazilian_federal_tax_id "MyString"
    brazilian_state_tax_id "MyString"
    chinese_cr_code "MyString"
    user nil
    parcel nil
  end
end
