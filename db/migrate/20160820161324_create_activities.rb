class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.string :activity_image
      t.integer :minutes_available
      t.boolean :isNewActivity
      t.integer :energy_level
      t.integer :number_of_people
      t.integer :day_of_the_week
      t.string :location
      t.integer :weather
      t.timestamps null: false
    end
  end
end
