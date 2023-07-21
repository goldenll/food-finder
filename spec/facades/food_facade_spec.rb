require "rails_helper"

RSpec.describe FoodFacade do 
  it "returns a list of foods" do 
    foods = FoodFacade.get_foods("sweet potatoes")

    expect(foods).to be_a(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.gtinupc).to be_a(String)
    expect(foods.first.description).to be_a(String)
    expect(foods.first.brandowner).to be_a(String)
    expect(foods.first.ingredients).to be_a(String)
  end
end
