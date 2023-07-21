require "rails_helper"

RSpec.describe Food do 
  it "exists and has attributes" do 
    data = {
      :gtinUpc=>"123456789",
      :description=>"description description description description",
      :brandOwner=>"owner info",
      :ingredients=>"ORGANIC SWEET POTATOES"
    }

    food1 = Food.new(data)

    expect(food1).to be_a(Food)
    expect(food1.gtinupc).to eq("123456789")
    expect(food1.description).to eq("description description description description")
    expect(food1.brandowner).to eq("owner info")
    expect(food1.ingredients).to eq("ORGANIC SWEET POTATOES")
  end
end
