class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :first_name,   default: "Galvanize"
      t.string :last_name,    default: "Guest"
      t.boolean :guest?,      default: false
      t.string :access_type,  default: "Access permitted - token only"

      t.timestamps
    end
  end
end
