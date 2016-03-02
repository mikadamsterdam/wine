class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :note
      t.string :explanation

      t.timestamps null: false
    end
  end
end
