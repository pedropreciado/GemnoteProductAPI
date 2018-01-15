json.extract! category, :id, :title

unless category.child_categories.empty?
  sub_ids = category.child_categories.map {|child| child.id}
  json.subcategories sub_ids
end

if category.parent_category
  parent = category.parent_category
  json.parent_id parent.id
end
