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
end
