# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  validates :title, presence: true

  has_many :products,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: "Product"

  has_many :subcategories,
    primary_key: :id,
    foreign_key: :parent_category_id,
    class_name: "Subcategory"

  has_one :supercategory,
    primary_key: :id,
    foreign_key: :child_category_id,
    class_name: "Subcategory"

  has_many :child_categories,
    through: :subcategories,
    source: :child_category

  has_one :parent_category,
    through: :supercategory,
    source: :parent_category
end
