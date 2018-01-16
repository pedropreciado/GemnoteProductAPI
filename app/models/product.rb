# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  category_id :integer
#  pricing     :decimal(10, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  option      :string
#

class Product < ApplicationRecord
  validates :title, :category_id, :pricing, presence: true

  belongs_to :category,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: "Category"

  has_many :information,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: "Information"

  has_many :options,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: "Option"

  has_many :images,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: "Image"

  has_many :other_options,
    primary_key: :id,
    foreign_key: :option_id,
    class_name: "Option"

  has_many :similar_products,
    through: :options,
    source: :option
end
