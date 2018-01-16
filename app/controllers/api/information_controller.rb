class Api::InformationController < ApplicationController
  def create
    @information = Information.new(info_params)
    if @information.save!
      @product = Product.find_by(id: params[:product_id])
      render "api/products/show", product: @product
    else
      render json: @information.errors.full_messages
    end
  end

  def info_params
    params.permit(:body, :product_id)
  end
end
