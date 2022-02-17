class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :favorite_food, default: "cheese"
      t.string :favorite_toy
      t.date :date_of_birth
      t.references :human, null: false, foreign_key: true
    end
  end
end
