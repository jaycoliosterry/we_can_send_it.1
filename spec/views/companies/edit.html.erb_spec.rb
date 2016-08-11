require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :wcsi_admin => false,
      :company_name => "MyString",
      :user_admin_id => 1,
      :department => "MyString",
      :shipping_address_line_1 => "MyText",
      :shipping_address_line_2 => "MyText",
      :shipping_postcode_or_zip => "MyString",
      :shipping_city => "MyString",
      :shipping_state_or_region => "MyString",
      :shipping_country_id => 1,
      :billing_address_line_1 => "MyText",
      :billing_address_line_2 => "MyText",
      :billing_city => "MyString",
      :billing_state_or_region => "MyString",
      :billing_country_id => 1,
      :express_courier_rate_id => 1,
      :economy_courier_rate_id => 1,
      :postal_courier_rate_id => 1,
      :billing_email_address => "MyString",
      :main_telephone_number => "MyString",
      :user => nil,
      :invoice_line_item => nil
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_wcsi_admin[name=?]", "company[wcsi_admin]"

      assert_select "input#company_company_name[name=?]", "company[company_name]"

      assert_select "input#company_user_admin_id[name=?]", "company[user_admin_id]"

      assert_select "input#company_department[name=?]", "company[department]"

      assert_select "textarea#company_shipping_address_line_1[name=?]", "company[shipping_address_line_1]"

      assert_select "textarea#company_shipping_address_line_2[name=?]", "company[shipping_address_line_2]"

      assert_select "input#company_shipping_postcode_or_zip[name=?]", "company[shipping_postcode_or_zip]"

      assert_select "input#company_shipping_city[name=?]", "company[shipping_city]"

      assert_select "input#company_shipping_state_or_region[name=?]", "company[shipping_state_or_region]"

      assert_select "input#company_shipping_country_id[name=?]", "company[shipping_country_id]"

      assert_select "textarea#company_billing_address_line_1[name=?]", "company[billing_address_line_1]"

      assert_select "textarea#company_billing_address_line_2[name=?]", "company[billing_address_line_2]"

      assert_select "input#company_billing_city[name=?]", "company[billing_city]"

      assert_select "input#company_billing_state_or_region[name=?]", "company[billing_state_or_region]"

      assert_select "input#company_billing_country_id[name=?]", "company[billing_country_id]"

      assert_select "input#company_express_courier_rate_id[name=?]", "company[express_courier_rate_id]"

      assert_select "input#company_economy_courier_rate_id[name=?]", "company[economy_courier_rate_id]"

      assert_select "input#company_postal_courier_rate_id[name=?]", "company[postal_courier_rate_id]"

      assert_select "input#company_billing_email_address[name=?]", "company[billing_email_address]"

      assert_select "input#company_main_telephone_number[name=?]", "company[main_telephone_number]"

      assert_select "input#company_user_id[name=?]", "company[user_id]"

      assert_select "input#company_invoice_line_item_id[name=?]", "company[invoice_line_item_id]"
    end
  end
end
