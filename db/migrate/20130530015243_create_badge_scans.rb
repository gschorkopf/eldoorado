class CreateBadgeScans < ActiveRecord::Migration
  def change
    create_table :badge_scans do |t|
      t.datetime :scan_time

      t.timestamps
    end
  end
end
