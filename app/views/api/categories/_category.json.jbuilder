

json.extract! category, :id, :title

unless category.child_categories.empty?
  json.subcategories category.child_categories
end

if category.parent_category
  json.extract category, :parent_category
end
