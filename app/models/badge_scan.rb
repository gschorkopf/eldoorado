class BadgeScan < ActiveRecord::Base
  attr_accessible :scan_date, :scan_time, :door_id, :entrant_id

  belongs_to :entrant
  belongs_to :door
end
