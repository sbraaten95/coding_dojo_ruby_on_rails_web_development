class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :pet
      t.integer :age
      t.integer :pet_age

      t.timestamps
    end
  end
end
