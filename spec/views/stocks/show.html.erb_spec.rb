require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Client Reference Code/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Paper Size/)
    expect(rendered).to match(/Number Of Pages/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Stock Image/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
  end
end
