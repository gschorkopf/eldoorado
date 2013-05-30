class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :location,   default: "Unknown location"

      t.timestamps
    end
  end
end
