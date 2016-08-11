require 'rails_helper'

RSpec.describe "email_templates/index", type: :view do
  before(:each) do
    assign(:email_templates, [
      EmailTemplate.create!(
        :user => nil,
        :available_to_entire_company => false,
        :reply_to_email_address => "Reply To Email Address",
        :email_subject => "Email Subject",
        :email_body => "MyText",
        :css => "MyText"
      ),
      EmailTemplate.create!(
        :user => nil,
        :available_to_entire_company => false,
        :reply_to_email_address => "Reply To Email Address",
        :email_subject => "Email Subject",
        :email_body => "MyText",
        :css => "MyText"
      )
    ])
  end

  it "renders a list of email_templates" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Reply To Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
