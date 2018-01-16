class Api::OptionsController < ApplicationController

  def create
    @option = Option.new(option_params)
    if @option.save!
      @product = Product.find_by(id: params[:product_id])
      render json: "api/products/show", product: @product
    else
      render json: @option.errors.full_messages
    end
  end

  def option_params
    params.permit(:product_id, :option_id)
  end
end
