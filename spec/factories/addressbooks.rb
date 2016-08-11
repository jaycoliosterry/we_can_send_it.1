FactoryGirl.define do
  factory :addressbook do
    customer_id 1
    visible_to_entire_company false
    created_by_user_id 1
    address_book_name "MyString"
    address_book_description "MyText"
    archive_this_address_book false
    company nil
    user nil
  end
end
