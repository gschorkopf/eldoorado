class BadgeScan < ActiveRecord::Base
  attr_accessible :scan_time, :door_id, :entrant_id

  belongs_to :entrant
  belongs_to :door

  def as_json(options={})
    super(except: [:created_at, :updated_at])

    {
      scan_time: self.scan_time,
      door: self.door.location,
      entrant_id: self.entrant.id
    }
  end
end
