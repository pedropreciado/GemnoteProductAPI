# == Schema Information
#
# Table name: subcategories
#
#  id                 :integer          not null, primary key
#  parent_category_id :integer
#  child_category_id  :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SubcategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
