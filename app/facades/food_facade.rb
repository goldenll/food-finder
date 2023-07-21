class FoodFacade
  def get_foods(food)
    service = FoodService.new
    request = service.food_search(food)
    @foods = request[:data].map do |data|
      Food.new(data)
    end
  end
end