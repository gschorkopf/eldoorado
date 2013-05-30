class Door < ActiveRecord::Base
  attr_accessible :location

  has_many :badge_scans

  def to_s
    location
  end
end
