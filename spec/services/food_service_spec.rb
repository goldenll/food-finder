require "rails_helper"

RSpec.describe "food service" do 
  it "returns a list of foods" do 
    search = FoodService.new.food_search("sweet potatoes")
    food1 = search[:foods].first
    # require 'pry'; binding.pry

    expect(search).to be_a(Hash)
    expect(search).to have_key(:totalHits)
    expect(search[:totalHits]).to be_an(Integer)
    expect(search[:totalHits]).to eq(55579)
    expect(food1).to have_key(:gtinUpc)
    expect(food1[:gtinUpc]).to be_a(String)
    expect(food1).to have_key(:description)
    expect(food1[:description]).to be_a(String)
    expect(food1).to have_key(:brandOwner)
    expect(food1[:brandOwner]).to be_a(String)
    expect(food1).to have_key(:ingredients)
    expect(food1[:ingredients]).to be_a(String)
  end
end
