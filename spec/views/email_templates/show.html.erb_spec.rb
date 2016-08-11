require 'rails_helper'

RSpec.describe "email_templates/show", type: :view do
  before(:each) do
    @email_template = assign(:email_template, EmailTemplate.create!(
      :user => nil,
      :available_to_entire_company => false,
      :reply_to_email_address => "Reply To Email Address",
      :email_subject => "Email Subject",
      :email_body => "MyText",
      :css => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Reply To Email Address/)
    expect(rendered).to match(/Email Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
