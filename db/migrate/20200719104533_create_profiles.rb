class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :online_code
      t.string :current_rank
      t.string :best_rank
      t.string :frequency
      t.string :enjoy
      
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
