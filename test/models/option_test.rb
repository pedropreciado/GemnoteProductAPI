# == Schema Information
#
# Table name: options
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  option_id  :integer
#

require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
