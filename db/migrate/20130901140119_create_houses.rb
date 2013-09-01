class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address
      t.string :address_2
      t.string :neighborhood
      t.integer :zip
      t.integer :number_of_rooms
      t.integer :price
      t.integer :deposit
      t.string :email
      t.string :phone
      t.text :description
      t.integer :minimum_weeks
      t.integer :maximum_weeks
    end
  end
end
