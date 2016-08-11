require 'rails_helper'

RSpec.describe "parcels/index", type: :view do
  before(:each) do
    assign(:parcels, [
      Parcel.create!(
        :order => nil,
        :customer_shipment_cost_pre_tax => "9.99",
        :taxable => false,
        :tax_rate => "9.99",
        :tax => "9.99",
        :customer_shipment_cost_with_tax => "9.99",
        :parcel_items_and_quantity => "Parcel Items And Quantity",
        :weight_of_parcel => "9.99",
        :customs_short_declaration => "Customs Short Declaration",
        :customs_long_description => "MyText",
        :parcel_height => "9.99",
        :parcel_length => "9.99",
        :parcel_width => "9.99",
        :parcel_number_in_order => 2,
        :internal_cost_of_parcel => "9.99",
        :shipping_carrier => "Shipping Carrier"
      ),
      Parcel.create!(
        :order => nil,
        :customer_shipment_cost_pre_tax => "9.99",
        :taxable => false,
        :tax_rate => "9.99",
        :tax => "9.99",
        :customer_shipment_cost_with_tax => "9.99",
        :parcel_items_and_quantity => "Parcel Items And Quantity",
        :weight_of_parcel => "9.99",
        :customs_short_declaration => "Customs Short Declaration",
        :customs_long_description => "MyText",
        :parcel_height => "9.99",
        :parcel_length => "9.99",
        :parcel_width => "9.99",
        :parcel_number_in_order => 2,
        :internal_cost_of_parcel => "9.99",
        :shipping_carrier => "Shipping Carrier"
      )
    ])
  end

  it "renders a list of parcels" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Parcel Items And Quantity".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Customs Short Declaration".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Carrier".to_s, :count => 2
  end
end
