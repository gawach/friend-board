class AddColumnFavoriteCharacterToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :favorite_character, :string
  end
end
