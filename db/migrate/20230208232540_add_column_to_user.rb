class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :phone, :integer
    add_column :users, :address, :string
    add_column :users, :civility, :string
  end
end
