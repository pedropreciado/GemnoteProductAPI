class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
  end

  def product_params
    params.require(:product).permit(:title, :category_id, :pricing)
  end
end
