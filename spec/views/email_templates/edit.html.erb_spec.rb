require 'rails_helper'

RSpec.describe "email_templates/edit", type: :view do
  before(:each) do
    @email_template = assign(:email_template, EmailTemplate.create!(
      :user => nil,
      :available_to_entire_company => false,
      :reply_to_email_address => "MyString",
      :email_subject => "MyString",
      :email_body => "MyText",
      :css => "MyText"
    ))
  end

  it "renders the edit email_template form" do
    render

    assert_select "form[action=?][method=?]", email_template_path(@email_template), "post" do

      assert_select "input#email_template_user_id[name=?]", "email_template[user_id]"

      assert_select "input#email_template_available_to_entire_company[name=?]", "email_template[available_to_entire_company]"

      assert_select "input#email_template_reply_to_email_address[name=?]", "email_template[reply_to_email_address]"

      assert_select "input#email_template_email_subject[name=?]", "email_template[email_subject]"

      assert_select "textarea#email_template_email_body[name=?]", "email_template[email_body]"

      assert_select "textarea#email_template_css[name=?]", "email_template[css]"
    end
  end
end
