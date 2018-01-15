# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  title      :string
#  url        :string
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  validates :url, :product_id, presence: true

  belongs_to :product,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: "Product"
end
