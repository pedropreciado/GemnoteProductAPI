# == Schema Information
#
# Table name: information
#
#  id         :integer          not null, primary key
#  body       :string
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Information < ApplicationRecord
  validates :body, :product_id, presence: true

  belongs_to :product,
    primary_key: :id,
    foreign_key: :product_id
    class_name: "Product"
end
