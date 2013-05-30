class Door < ActiveRecord::Base
  attr_accessible :location

  has_many :badge_scans

  def as_json(options={})
    super(except: [:created_at, :updated_at])
  end
end
