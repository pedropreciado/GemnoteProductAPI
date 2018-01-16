class Api::ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    if @image.save!
      @product = Product.find_by(id: params[:product_id])
      render "api/products/show", product: @product
    else
      render json: @image.errors.full_messages, status: 422
    end
  end

  def image_params
    params.permit(:title, :url, :product_id)
  end
end
