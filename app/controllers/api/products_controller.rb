class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save!
      render :index
    else
      render json: @product.errors.full_messages
    end
  end

  def product_params
    params.require(:product).permit(:title, :category_id, :pricing)
  end
end
