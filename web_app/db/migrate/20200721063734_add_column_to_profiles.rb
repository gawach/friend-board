class AddColumnToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :game_title, :string
    add_column :profiles, :favorite_character, :string
  end
end
