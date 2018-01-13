class AddOptionToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :option, :string
  end
end
