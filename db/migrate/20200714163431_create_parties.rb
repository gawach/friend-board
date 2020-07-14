class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.references :user, foreign_key: true
      t.references :join, foreign_key: { to_table: :users }
      t.references :board, foreign_key: true

      t.timestamps
      
      t.index [:user_id, :join_id], unique: true
    end
  end
end
