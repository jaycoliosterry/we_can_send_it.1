require 'rails_helper'

RSpec.describe "addressbooks/new", type: :view do
  before(:each) do
    assign(:addressbook, Addressbook.new(
      :customer_id => 1,
      :visible_to_entire_company => false,
      :created_by_user_id => 1,
      :address_book_name => "MyString",
      :address_book_description => "MyText",
      :archive_this_address_book => false,
      :company => nil,
      :user => nil
    ))
  end

  it "renders new addressbook form" do
    render

    assert_select "form[action=?][method=?]", addressbooks_path, "post" do

      assert_select "input#addressbook_customer_id[name=?]", "addressbook[customer_id]"

      assert_select "input#addressbook_visible_to_entire_company[name=?]", "addressbook[visible_to_entire_company]"

      assert_select "input#addressbook_created_by_user_id[name=?]", "addressbook[created_by_user_id]"

      assert_select "input#addressbook_address_book_name[name=?]", "addressbook[address_book_name]"

      assert_select "textarea#addressbook_address_book_description[name=?]", "addressbook[address_book_description]"

      assert_select "input#addressbook_archive_this_address_book[name=?]", "addressbook[archive_this_address_book]"

      assert_select "input#addressbook_company_id[name=?]", "addressbook[company_id]"

      assert_select "input#addressbook_user_id[name=?]", "addressbook[user_id]"
    end
  end
end
