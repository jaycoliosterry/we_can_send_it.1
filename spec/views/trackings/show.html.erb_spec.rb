require 'rails_helper'

RSpec.describe "trackings/show", type: :view do
  before(:each) do
    @tracking = assign(:tracking, Tracking.create!(
      :parcel => nil,
      :signed_for_by => "MyText",
      :tracking_code => "Tracking Code",
      :tracking_status => "Tracking Status",
      :tracking_status_description => "MyText",
      :will_arrive_in_time => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tracking Code/)
    expect(rendered).to match(/Tracking Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
