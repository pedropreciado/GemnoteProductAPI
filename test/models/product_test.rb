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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
