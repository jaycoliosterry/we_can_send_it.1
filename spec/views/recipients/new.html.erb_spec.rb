require 'rails_helper'

RSpec.describe "recipients/new", type: :view do
  before(:each) do
    assign(:recipient, Recipient.new(
      :address_id => 1,
      :recipient_name => "MyString",
      :recipient_job_title => "MyString",
      :recipient_email_address => "MyString",
      :recipient_phone_number => "MyString",
      :address => nil,
      :parcel => nil
    ))
  end

  it "renders new recipient form" do
    render

    assert_select "form[action=?][method=?]", recipients_path, "post" do

      assert_select "input#recipient_address_id[name=?]", "recipient[address_id]"

      assert_select "input#recipient_recipient_name[name=?]", "recipient[recipient_name]"

      assert_select "input#recipient_recipient_job_title[name=?]", "recipient[recipient_job_title]"

      assert_select "input#recipient_recipient_email_address[name=?]", "recipient[recipient_email_address]"

      assert_select "input#recipient_recipient_phone_number[name=?]", "recipient[recipient_phone_number]"

      assert_select "input#recipient_address_id[name=?]", "recipient[address_id]"

      assert_select "input#recipient_parcel_id[name=?]", "recipient[parcel_id]"
    end
  end
end
