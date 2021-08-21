class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :overall, null: false, default: 0
      t.integer :votes, null: false, default: 0
      t.references :movie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
