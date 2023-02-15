class RemoveColumnToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :last_name
    remove_column :users, :first_name
    remove_column :users, :phone
    remove_column :users, :address
    remove_column :users, :civility
  end
end
