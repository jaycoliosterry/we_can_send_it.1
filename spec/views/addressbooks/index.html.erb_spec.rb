require 'rails_helper'

RSpec.describe "addressbooks/index", type: :view do
  before(:each) do
    assign(:addressbooks, [
      Addressbook.create!(
        :customer_id => 2,
        :visible_to_entire_company => false,
        :created_by_user_id => 3,
        :address_book_name => "Address Book Name",
        :address_book_description => "MyText",
        :archive_this_address_book => false,
        :company => nil,
        :user => nil
      ),
      Addressbook.create!(
        :customer_id => 2,
        :visible_to_entire_company => false,
        :created_by_user_id => 3,
        :address_book_name => "Address Book Name",
        :address_book_description => "MyText",
        :archive_this_address_book => false,
        :company => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of addressbooks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Address Book Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
