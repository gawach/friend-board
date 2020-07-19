class ChangeColumnToParty < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :parties, :users
    remove_index :parties, :user_id
    remove_reference :parties, :user
  end
end
