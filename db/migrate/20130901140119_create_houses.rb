class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address
      t.string :neighborhood
      t.integer :number_of_rooms
      t.integer :price
      t.string :phone
      t.string :email
      t.text :description
      t.integer :minimum_weeks
      t.integer :maximum_weeks
    end
  end
end
