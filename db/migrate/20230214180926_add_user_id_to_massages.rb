class AddUserIdToMassages < ActiveRecord::Migration[7.0]
  def change
    add_reference :massages, :user, null: false, foreign_key: true
  end
end
