class AddRatedToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :rated, :integer, array: true, default: []
  end
end
