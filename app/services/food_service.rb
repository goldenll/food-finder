class FoodService 
  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["FOOD_KEY"]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def food_search(food)
    get_url("/fdc/v1/foods/search?query=#{food}")
  end
end
