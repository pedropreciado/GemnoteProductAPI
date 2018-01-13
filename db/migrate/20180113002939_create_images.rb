class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :url
      t.integer :product_id

      t.timestamps
    end

    add_index :images, :product_id
  end
end
