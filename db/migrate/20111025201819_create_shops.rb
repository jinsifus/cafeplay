class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :wifi
      t.string :food
      t.string :description
      t.string :neighborhood
      t.integer :zipcode
      t.integer :phone
      t.integer :two_person_tables
      t.integer :four_person_tables

      t.timestamps
    end
  end
end
