class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.integer :product_id

      t.timestamps
    end

    add_index :options, :product_id
  end
end
