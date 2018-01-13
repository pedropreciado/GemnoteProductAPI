class AddOptionIdToOption < ActiveRecord::Migration[5.1]
  def change
    add_column :options, :option_id, :integer

    add_index :options, :options_id
  end
end
