class Door < ActiveRecord::Base
  attr_accessible :location

  has_many :badge_scans

  def as_json(options={})
    super(except: [:created_at, :updated_at])
  end

  def self.handle_id(id)
    if id.to_i == 0
      location = id.split(",")
      find_by_location(location)
    else
      find(id)
    end
  end
end
