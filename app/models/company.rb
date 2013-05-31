class Company < ActiveRecord::Base
  attr_accessible :name

  has_many :entrants

  def badge_scans
    entrants.collect(&:badge_scans)
  end

  def as_json(options={})
    super(except: [:created_at, :updated_at])
  end
end
