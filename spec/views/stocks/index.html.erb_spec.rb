require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :company => nil,
        :mark_stock_as_to_be_destroyed => false,
        :title => "Title",
        :description => "MyText",
        :client_reference_code => "Client Reference Code",
        :height_in_cm => "9.99",
        :width_in_cm => "9.99",
        :length_in_cm => "9.99",
        :paper_size => "Paper Size",
        :number_of_pages => "Number Of Pages",
        :weight_in_kg => "9.99",
        :stock_image => "Stock Image",
        :quantity_currently_in_stock => 2,
        :total_ever_in_stock => 3,
        :total_ever_sent => 4,
        :total_damaged_or_destroyed => 5,
        :parcel => nil
      ),
      Stock.create!(
        :company => nil,
        :mark_stock_as_to_be_destroyed => false,
        :title => "Title",
        :description => "MyText",
        :client_reference_code => "Client Reference Code",
        :height_in_cm => "9.99",
        :width_in_cm => "9.99",
        :length_in_cm => "9.99",
        :paper_size => "Paper Size",
        :number_of_pages => "Number Of Pages",
        :weight_in_kg => "9.99",
        :stock_image => "Stock Image",
        :quantity_currently_in_stock => 2,
        :total_ever_in_stock => 3,
        :total_ever_sent => 4,
        :total_damaged_or_destroyed => 5,
        :parcel => nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Client Reference Code".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Paper Size".to_s, :count => 2
    assert_select "tr>td", :text => "Number Of Pages".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Stock Image".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
