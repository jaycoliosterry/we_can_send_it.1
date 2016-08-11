require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
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
      ),
      Company.create!(
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
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Postcode Or Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping City".to_s, :count => 2
    assert_select "tr>td", :text => "Shipping State Or Region".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Billing City".to_s, :count => 2
    assert_select "tr>td", :text => "Billing State Or Region".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Billing Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Main Telephone Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
