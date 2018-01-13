class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal6 :pricing
      t.decimal2 :pricing
      t.integer :category_id

      t.timestamps
    end
  end
end
