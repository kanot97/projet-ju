class AddColumnToMassaages2 < ActiveRecord::Migration[7.0]
  def change
    add_column :massages, :time, :time
  end
end
