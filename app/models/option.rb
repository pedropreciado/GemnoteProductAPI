# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Option < ApplicationRecord
  validates :product_id, presence: true

  belongs_to :product,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: "Product"
end
