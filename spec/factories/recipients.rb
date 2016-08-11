FactoryGirl.define do
  factory :recipient do
    address_id 1
    recipient_name "MyString"
    recipient_job_title "MyString"
    recipient_email_address "MyString"
    recipient_phone_number "MyString"
    address nil
    parcel nil
  end
end
