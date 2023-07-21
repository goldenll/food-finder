require "rails_helper"

RSpec.describe "foods index page", type: :feature do 
  it "displays information about parks from a given state " do 
    visit root_path
    fill_in :search_field, with: "sweet potatoes"
    click_button "Find Foods"

    expect(current_path).to eq(foods_path)
save_and_open_page
    expect(page).to have_content("8901020020844")
    expect(page).to have_content("SWEET POTATOES")
    expect(page).to have_content("NOT A BRANDED ITEM")
    expect(page).to have_content("ORGANIC SWEET POTATOES.")
  end
end

# :gtinUpc=>"8901020020844"
# :description=>"SWEET POTATOES"
# :brandOwner=>"NOT A BRANDED ITEM"
# :ingredients=>"ORGANIC SWEET POTATOES."
