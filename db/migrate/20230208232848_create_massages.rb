class CreateMassages < ActiveRecord::Migration[7.0]
  def change
    create_table :massages do |t|
      t.integer :time
      t.string :type

      t.timestamps
    end
  end
end
