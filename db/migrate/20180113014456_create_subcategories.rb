class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.integer :parent_category_id
      t.integer :child_category_id

      t.timestamps
    end
    add_index :subcategories, :parent_category_id
    add_index :subcategories, :child_category_id
  end
end
