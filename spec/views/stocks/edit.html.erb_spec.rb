require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :company => nil,
      :mark_stock_as_to_be_destroyed => false,
      :title => "MyString",
      :description => "MyText",
      :client_reference_code => "MyString",
      :height_in_cm => "9.99",
      :width_in_cm => "9.99",
      :length_in_cm => "9.99",
      :paper_size => "MyString",
      :number_of_pages => "MyString",
      :weight_in_kg => "9.99",
      :stock_image => "MyString",
      :quantity_currently_in_stock => 1,
      :total_ever_in_stock => 1,
      :total_ever_sent => 1,
      :total_damaged_or_destroyed => 1,
      :parcel => nil
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input#stock_company_id[name=?]", "stock[company_id]"

      assert_select "input#stock_mark_stock_as_to_be_destroyed[name=?]", "stock[mark_stock_as_to_be_destroyed]"

      assert_select "input#stock_title[name=?]", "stock[title]"

      assert_select "textarea#stock_description[name=?]", "stock[description]"

      assert_select "input#stock_client_reference_code[name=?]", "stock[client_reference_code]"

      assert_select "input#stock_height_in_cm[name=?]", "stock[height_in_cm]"

      assert_select "input#stock_width_in_cm[name=?]", "stock[width_in_cm]"

      assert_select "input#stock_length_in_cm[name=?]", "stock[length_in_cm]"

      assert_select "input#stock_paper_size[name=?]", "stock[paper_size]"

      assert_select "input#stock_number_of_pages[name=?]", "stock[number_of_pages]"

      assert_select "input#stock_weight_in_kg[name=?]", "stock[weight_in_kg]"

      assert_select "input#stock_stock_image[name=?]", "stock[stock_image]"

      assert_select "input#stock_quantity_currently_in_stock[name=?]", "stock[quantity_currently_in_stock]"

      assert_select "input#stock_total_ever_in_stock[name=?]", "stock[total_ever_in_stock]"

      assert_select "input#stock_total_ever_sent[name=?]", "stock[total_ever_sent]"

      assert_select "input#stock_total_damaged_or_destroyed[name=?]", "stock[total_damaged_or_destroyed]"

      assert_select "input#stock_parcel_id[name=?]", "stock[parcel_id]"
    end
  end
end
