class ChangeColumnToProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :game_id
  end
end
