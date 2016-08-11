require 'rails_helper'

RSpec.describe "recipients/show", type: :view do
  before(:each) do
    @recipient = assign(:recipient, Recipient.create!(
      :address_id => 2,
      :recipient_name => "Recipient Name",
      :recipient_job_title => "Recipient Job Title",
      :recipient_email_address => "Recipient Email Address",
      :recipient_phone_number => "Recipient Phone Number",
      :address => nil,
      :parcel => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Recipient Name/)
    expect(rendered).to match(/Recipient Job Title/)
    expect(rendered).to match(/Recipient Email Address/)
    expect(rendered).to match(/Recipient Phone Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
