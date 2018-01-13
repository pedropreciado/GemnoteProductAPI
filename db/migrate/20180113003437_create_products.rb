class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :category_id
      t.decimal :pricing, precision: 10, scale: 2

      t.timestamps
    end

    add_index :products, :category_id
  end
end
