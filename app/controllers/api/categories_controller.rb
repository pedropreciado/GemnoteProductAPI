class Api::CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render :index
    else
      render json: @category.errors.full_messages
    end
  end

  def update

  end

  def destroy
    @category = Category.all.find(params[:id])
    if @category.destroy!
      render :show
    else
      render json: @category.errors.full_messages, status: 422
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title, :parent_category, :child_category)
  end
end
