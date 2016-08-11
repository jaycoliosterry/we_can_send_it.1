require 'rails_helper'

RSpec.describe "parcels/new", type: :view do
  before(:each) do
    assign(:parcel, Parcel.new(
      :order => nil,
      :customer_shipment_cost_pre_tax => "9.99",
      :taxable => false,
      :tax_rate => "9.99",
      :tax => "9.99",
      :customer_shipment_cost_with_tax => "9.99",
      :parcel_items_and_quantity => "MyString",
      :weight_of_parcel => "9.99",
      :customs_short_declaration => "MyString",
      :customs_long_description => "MyText",
      :parcel_height => "9.99",
      :parcel_length => "9.99",
      :parcel_width => "9.99",
      :parcel_number_in_order => 1,
      :internal_cost_of_parcel => "9.99",
      :shipping_carrier => "MyString"
    ))
  end

  it "renders new parcel form" do
    render

    assert_select "form[action=?][method=?]", parcels_path, "post" do

      assert_select "input#parcel_order_id[name=?]", "parcel[order_id]"

      assert_select "input#parcel_customer_shipment_cost_pre_tax[name=?]", "parcel[customer_shipment_cost_pre_tax]"

      assert_select "input#parcel_taxable[name=?]", "parcel[taxable]"

      assert_select "input#parcel_tax_rate[name=?]", "parcel[tax_rate]"

      assert_select "input#parcel_tax[name=?]", "parcel[tax]"

      assert_select "input#parcel_customer_shipment_cost_with_tax[name=?]", "parcel[customer_shipment_cost_with_tax]"

      assert_select "input#parcel_parcel_items_and_quantity[name=?]", "parcel[parcel_items_and_quantity]"

      assert_select "input#parcel_weight_of_parcel[name=?]", "parcel[weight_of_parcel]"

      assert_select "input#parcel_customs_short_declaration[name=?]", "parcel[customs_short_declaration]"

      assert_select "textarea#parcel_customs_long_description[name=?]", "parcel[customs_long_description]"

      assert_select "input#parcel_parcel_height[name=?]", "parcel[parcel_height]"

      assert_select "input#parcel_parcel_length[name=?]", "parcel[parcel_length]"

      assert_select "input#parcel_parcel_width[name=?]", "parcel[parcel_width]"

      assert_select "input#parcel_parcel_number_in_order[name=?]", "parcel[parcel_number_in_order]"

      assert_select "input#parcel_internal_cost_of_parcel[name=?]", "parcel[internal_cost_of_parcel]"

      assert_select "input#parcel_shipping_carrier[name=?]", "parcel[shipping_carrier]"
    end
  end
end
