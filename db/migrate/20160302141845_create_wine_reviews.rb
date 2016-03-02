class CreateWineReviews < ActiveRecord::Migration
  def change
    create_table :wine_reviews do |t|
      t.string :expertname
      t.text :review
      t.integer :rating
      t.references :wine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
