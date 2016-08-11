FactoryGirl.define do
  factory :tracking do
    parcel nil
    signed_for_by "MyText"
    tracking_code "MyString"
    tracking_status "MyString"
    tracking_status_description "MyText"
    required_to_arrive_before "2016-08-11"
    will_arrive_in_time false
  end
end
