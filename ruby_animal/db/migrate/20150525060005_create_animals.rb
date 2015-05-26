class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.text :life_story
      t.string :image_url
      t.integer :lives, default: 11

      t.timestamps null: false
    end
  end
end
