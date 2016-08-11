require 'rails_helper'

RSpec.describe "trackings/index", type: :view do
  before(:each) do
    assign(:trackings, [
      Tracking.create!(
        :parcel => nil,
        :signed_for_by => "MyText",
        :tracking_code => "Tracking Code",
        :tracking_status => "Tracking Status",
        :tracking_status_description => "MyText",
        :will_arrive_in_time => false
      ),
      Tracking.create!(
        :parcel => nil,
        :signed_for_by => "MyText",
        :tracking_code => "Tracking Code",
        :tracking_status => "Tracking Status",
        :tracking_status_description => "MyText",
        :will_arrive_in_time => false
      )
    ])
  end

  it "renders a list of trackings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Code".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
