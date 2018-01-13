class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.string :body
      t.integer :product_id

      t.timestamps
    end
  end
end
