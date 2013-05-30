class AddEntrantIdToBadgeScans < ActiveRecord::Migration
  def change
    add_column :badge_scans, :entrant_id, :integer
  end
end
