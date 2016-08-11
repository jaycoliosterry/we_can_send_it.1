require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :wcsi_admin => false,
      :company_name => "Company Name",
      :user_admin_id => 2,
      :department => "Department",
      :shipping_address_line_1 => "MyText",
      :shipping_address_line_2 => "MyText",
      :shipping_postcode_or_zip => "Shipping Postcode Or Zip",
      :shipping_city => "Shipping City",
      :shipping_state_or_region => "Shipping State Or Region",
      :shipping_country_id => 3,
      :billing_address_line_1 => "MyText",
      :billing_address_line_2 => "MyText",
      :billing_city => "Billing City",
      :billing_state_or_region => "Billing State Or Region",
      :billing_country_id => 4,
      :express_courier_rate_id => 5,
      :economy_courier_rate_id => 6,
      :postal_courier_rate_id => 7,
      :billing_email_address => "Billing Email Address",
      :main_telephone_number => "Main Telephone Number",
      :user => nil,
      :invoice_line_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Shipping Postcode Or Zip/)
    expect(rendered).to match(/Shipping City/)
    expect(rendered).to match(/Shipping State Or Region/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Billing City/)
    expect(rendered).to match(/Billing State Or Region/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Billing Email Address/)
    expect(rendered).to match(/Main Telephone Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
