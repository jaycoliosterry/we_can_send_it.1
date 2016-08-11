require 'rails_helper'

RSpec.describe "recipients/index", type: :view do
  before(:each) do
    assign(:recipients, [
      Recipient.create!(
        :address_id => 2,
        :recipient_name => "Recipient Name",
        :recipient_job_title => "Recipient Job Title",
        :recipient_email_address => "Recipient Email Address",
        :recipient_phone_number => "Recipient Phone Number",
        :address => nil,
        :parcel => nil
      ),
      Recipient.create!(
        :address_id => 2,
        :recipient_name => "Recipient Name",
        :recipient_job_title => "Recipient Job Title",
        :recipient_email_address => "Recipient Email Address",
        :recipient_phone_number => "Recipient Phone Number",
        :address => nil,
        :parcel => nil
      )
    ])
  end

  it "renders a list of recipients" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Name".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
