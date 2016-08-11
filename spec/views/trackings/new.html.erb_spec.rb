require 'rails_helper'

RSpec.describe "trackings/new", type: :view do
  before(:each) do
    assign(:tracking, Tracking.new(
      :parcel => nil,
      :signed_for_by => "MyText",
      :tracking_code => "MyString",
      :tracking_status => "MyString",
      :tracking_status_description => "MyText",
      :will_arrive_in_time => false
    ))
  end

  it "renders new tracking form" do
    render

    assert_select "form[action=?][method=?]", trackings_path, "post" do

      assert_select "input#tracking_parcel_id[name=?]", "tracking[parcel_id]"

      assert_select "textarea#tracking_signed_for_by[name=?]", "tracking[signed_for_by]"

      assert_select "input#tracking_tracking_code[name=?]", "tracking[tracking_code]"

      assert_select "input#tracking_tracking_status[name=?]", "tracking[tracking_status]"

      assert_select "textarea#tracking_tracking_status_description[name=?]", "tracking[tracking_status_description]"

      assert_select "input#tracking_will_arrive_in_time[name=?]", "tracking[will_arrive_in_time]"
    end
  end
end
