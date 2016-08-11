FactoryGirl.define do
  factory :stock do
    company nil
    mark_stock_as_to_be_destroyed false
    title "MyString"
    description "MyText"
    client_reference_code "MyString"
    height_in_cm "9.99"
    width_in_cm "9.99"
    length_in_cm "9.99"
    paper_size "MyString"
    number_of_pages "MyString"
    weight_in_kg "9.99"
    stock_image "MyString"
    quantity_currently_in_stock 1
    total_ever_in_stock 1
    total_ever_sent 1
    total_damaged_or_destroyed 1
    parcel nil
  end
end
