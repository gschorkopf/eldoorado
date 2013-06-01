class Company < ActiveRecord::Base
  attr_accessible :name

  has_many :entrants

  def badge_scans
    entrants.collect(&:badge_scans)
  end

  def as_json(options={})
    super(except: [:created_at, :updated_at])

    {
      id: self.id,
      name: self.name,
      entrants: self.entrants
    }
  end

  def self.handle_id(id)
    if id.to_i == 0
      find_by_name(id)
    else
      find(id)
    end
  end
end
