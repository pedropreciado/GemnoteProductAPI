json.id @category.id

json.partial! 'api/categories/category', category: @category

json.products @category.products
