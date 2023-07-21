class FoodFacade
  def self.get_foods(food)
    service = FoodService.new
    request = service.food_search(food)
    foods = request[:foods].map do |data|
      Food.new(data)
    end
  end

  def get_foods(food)
    service = FoodService.new
    request = service.food_search(food)
    foods = request[:foods].map do |data|
      Food.new(data)
    end
  end
end