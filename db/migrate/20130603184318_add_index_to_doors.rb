class AddIndexToDoors < ActiveRecord::Migration
  def change
    add_index :doors, :location
  end
end
