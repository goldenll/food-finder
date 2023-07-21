class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.new.get_foods(params[:food]).take(10)
  end
end
