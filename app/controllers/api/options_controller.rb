class Api::OptionsController < ApplicationController

  def create
    @option1 = Option.new(option_params)
    @option2 = Option.new({product_id: params[:option_id], option_id: params[:product_id]})
    if @option1.save! && @option2.save!
      @product = Product.find_by(id: params[:product_id])
      @other_product = Product.find_by(id: params[:option_id])

      unless @other_product.similar_products.empty?
        @other_product.similar_products.each do |sim_product|
          Option.new({product_id: @product.id, option_id: sim_product.id}).save!
          Option.new({product_id: sim_product.id, option_id: @product.id}).save!
        end
      end

      render json: "api/products/show", product: @product
    else
      render json: @option1.errors.full_messages
    end
  end

  def option_params
    params.permit(:product_id, :option_id)
  end
end
