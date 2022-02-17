class CreateHumans < ActiveRecord::Migration[6.1]
  def change
    create_table :humans do |t|
      t.string :name, null: false
      t.string :favorite_food
      t.string :favorite_color
      t.date :date_of_birth
      t.string :city
    end
  end
end
