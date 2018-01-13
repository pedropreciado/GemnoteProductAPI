class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.integer :parent_category_id
      t.integer :child_category_id

      t.timestamps
    end
  end
end
