require 'rails_helper'

RSpec.describe "parcels/show", type: :view do
  before(:each) do
    @parcel = assign(:parcel, Parcel.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Parcel Items And Quantity/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Customs Short Declaration/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Shipping Carrier/)
  end
end
