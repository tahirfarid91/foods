class FoodItemsController < ApplicationController
  before_action :authenticate_employee!
  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      redirect_to new_food_item_path
    else
      render 'new'
    end
  end

  private
    def food_item_params
      params.require(:food_item).permit(:name, :price, :category_id)
    end
end
