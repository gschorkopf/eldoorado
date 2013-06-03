class AddIndexToEntrants < ActiveRecord::Migration
  def change
    add_index :entrants, :first_name
    add_index :entrants, :last_name
  end
end
