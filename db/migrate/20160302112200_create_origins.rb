class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :country
      t.string :address

      t.timestamps null: false
    end
  end
end
