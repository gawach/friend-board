class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.references :join, foreign_key: { to_table: :users }
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
