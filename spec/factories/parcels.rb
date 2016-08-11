FactoryGirl.define do
  factory :parcel do
    order nil
    customer_shipment_cost_pre_tax "9.99"
    taxable false
    tax_rate "9.99"
    tax "9.99"
    customer_shipment_cost_with_tax "9.99"
    parcel_items_and_quantity "MyString"
    weight_of_parcel "9.99"
    customs_short_declaration "MyString"
    customs_long_description "MyText"
    parcel_height "9.99"
    parcel_length "9.99"
    parcel_width "9.99"
    parcel_number_in_order 1
    internal_cost_of_parcel "9.99"
    shipping_carrier "MyString"
  end
end
