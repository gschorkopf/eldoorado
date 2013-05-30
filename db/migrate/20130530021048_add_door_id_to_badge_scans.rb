class AddDoorIdToBadgeScans < ActiveRecord::Migration
  def change
    add_column :badge_scans, :door_id, :integer
  end
end
