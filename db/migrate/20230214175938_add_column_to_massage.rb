class AddColumnToMassage < ActiveRecord::Migration[7.0]
  def change
    add_column :massages, :price, :integer
    add_column :massages, :description, :text
    add_column :massages, :title, :string
  end
end
