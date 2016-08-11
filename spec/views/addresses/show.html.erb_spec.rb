require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Receiver Company Name/)
    expect(rendered).to match(/Receiver Company Contact Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address Line 1/)
    expect(rendered).to match(/Address Line 2/)
    expect(rendered).to match(/Zip Or Postcode/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State Or Region/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Brazilian Federal Tax/)
    expect(rendered).to match(/Brazilian State Tax/)
    expect(rendered).to match(/Chinese Cr Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
