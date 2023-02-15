class AddColumnToMassaages < ActiveRecord::Migration[7.0]
  def change
    add_column :massages, :time, :datetime
  end
end
