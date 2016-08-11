require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :receiver_company_id => 1,
      :receiver_company_name => "MyString",
      :receiver_company_contact_name => "MyString",
      :address_book_id => 1,
      :addressbook => nil,
      :address_line_1 => "MyString",
      :address_line_2 => "MyString",
      :zip_or_postcode => "MyString",
      :city => "MyString",
      :state_or_region => "MyString",
      :country_id => 1,
      :brazilian_federal_tax_id => "MyString",
      :brazilian_state_tax_id => "MyString",
      :chinese_cr_code => "MyString",
      :user => nil,
      :parcel => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_receiver_company_id[name=?]", "address[receiver_company_id]"

      assert_select "input#address_receiver_company_name[name=?]", "address[receiver_company_name]"

      assert_select "input#address_receiver_company_contact_name[name=?]", "address[receiver_company_contact_name]"

      assert_select "input#address_address_book_id[name=?]", "address[address_book_id]"

      assert_select "input#address_addressbook_id[name=?]", "address[addressbook_id]"

      assert_select "input#address_address_line_1[name=?]", "address[address_line_1]"

      assert_select "input#address_address_line_2[name=?]", "address[address_line_2]"

      assert_select "input#address_zip_or_postcode[name=?]", "address[zip_or_postcode]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state_or_region[name=?]", "address[state_or_region]"

      assert_select "input#address_country_id[name=?]", "address[country_id]"

      assert_select "input#address_brazilian_federal_tax_id[name=?]", "address[brazilian_federal_tax_id]"

      assert_select "input#address_brazilian_state_tax_id[name=?]", "address[brazilian_state_tax_id]"

      assert_select "input#address_chinese_cr_code[name=?]", "address[chinese_cr_code]"

      assert_select "input#address_user_id[name=?]", "address[user_id]"

      assert_select "input#address_parcel_id[name=?]", "address[parcel_id]"
    end
  end
end
