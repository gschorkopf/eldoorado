class BadgeScan < ActiveRecord::Base
  attr_accessible :scan_time, :door_id, :entrant_id

  belongs_to :entrant
  belongs_to :door

  default_scope order('scan_time DESC')

  def as_json(options={})
    super(except: [:created_at, :updated_at])

    {
      scan_time: self.scan_time,
      door: self.door.location,
      first_name: self.entrant.first_name,
      last_name: self.entrant.last_name,
      guest: self.entrant.guest,
      company: self.entrant.company.name
    }
  end

  def self.handle_id(id)
    if id.to_i == 0
      find_by_door(id)
    else
      find(id)
    end
  end
end
