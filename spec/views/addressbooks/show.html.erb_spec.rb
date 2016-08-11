require 'rails_helper'

RSpec.describe "addressbooks/show", type: :view do
  before(:each) do
    @addressbook = assign(:addressbook, Addressbook.create!(
      :customer_id => 2,
      :visible_to_entire_company => false,
      :created_by_user_id => 3,
      :address_book_name => "Address Book Name",
      :address_book_description => "MyText",
      :archive_this_address_book => false,
      :company => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Address Book Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
