class CreateRugbyWorldCupHostCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :rugby_world_cup_host_countries do |t|
      t.string :name
      t.integer :total_attendance
      t.integer :matches
      t.integer :stadium_capacity
      t.datetime :held_at

      t.timestamps
    end
  end
end
