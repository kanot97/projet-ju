class RemoveColumnToMassages2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :massages, :time
  end
end
