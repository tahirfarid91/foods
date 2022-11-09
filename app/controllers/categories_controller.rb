class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to new_food_item_path
    else
      render 'categories/new'
    end
  end

  private
    def category_params
      params.require(:category).permit(:title, :menu_id)
    end
end
