class Api::SubcategoriesController < ApplicationController

  def create
    @subcategory = Subcategory.new(subcategory_params)
    if @subcategory.save
      @category = Category.find_by(id: params[:parent_category_id])
      render "api/cateories/show", category: @category
    else
      render json @subcategory.errors.full_messages
    end
  end

  def subcategory_params
    params.permit(:parent_category_id, :child_category_id)
  end
end
