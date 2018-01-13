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

class Subcategory < ApplicationRecord
  belongs_to :parent_category,
    primary_key: :id,
    foreign_key: :parent_category_id,
    class_name: "Category"

  belongs_to :child_category,
    primary_key: :id,
    foreign_key: :child_category_id,
    class_name: "Category"
  
end
