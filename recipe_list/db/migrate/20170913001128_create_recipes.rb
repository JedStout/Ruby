class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :food_type
      t.integer :rating
      t.integer :duration
      t.string :creator

      t.timestamps
    end
  end
end
