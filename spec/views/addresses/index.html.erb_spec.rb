require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :receiver_company_id => 2,
        :receiver_company_name => "Receiver Company Name",
        :receiver_company_contact_name => "Receiver Company Contact Name",
        :address_book_id => 3,
        :addressbook => nil,
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :zip_or_postcode => "Zip Or Postcode",
        :city => "City",
        :state_or_region => "State Or Region",
        :country_id => 4,
        :brazilian_federal_tax_id => "Brazilian Federal Tax",
        :brazilian_state_tax_id => "Brazilian State Tax",
        :chinese_cr_code => "Chinese Cr Code",
        :user => nil,
        :parcel => nil
      ),
      Address.create!(
        :receiver_company_id => 2,
        :receiver_company_name => "Receiver Company Name",
        :receiver_company_contact_name => "Receiver Company Contact Name",
        :address_book_id => 3,
        :addressbook => nil,
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :zip_or_postcode => "Zip Or Postcode",
        :city => "City",
        :state_or_region => "State Or Region",
        :country_id => 4,
        :brazilian_federal_tax_id => "Brazilian Federal Tax",
        :brazilian_state_tax_id => "Brazilian State Tax",
        :chinese_cr_code => "Chinese Cr Code",
        :user => nil,
        :parcel => nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Receiver Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Receiver Company Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 2".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Or Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State Or Region".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Brazilian Federal Tax".to_s, :count => 2
    assert_select "tr>td", :text => "Brazilian State Tax".to_s, :count => 2
    assert_select "tr>td", :text => "Chinese Cr Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
