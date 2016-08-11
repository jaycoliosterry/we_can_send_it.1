FactoryGirl.define do
  factory :email_template do
    user nil
    available_to_entire_company false
    reply_to_email_address "MyString"
    email_subject "MyString"
    email_body "MyText"
    css "MyText"
  end
end
