class Entrant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :guest, :access_type, :company_id

  has_many :badge_scans
  belongs_to :company

  def as_json(options={})
    super(except: [:created_at, :updated_at])

    {
      id: id,
      first_name: self.first_name,
      last_name: self.last_name,
      guest: self.guest,
      access_type: self.access_type,
      company: self.company.name,
      badge_scans: self.badge_scans
    }
  end

  def self.handle_id(id)
    if id.to_i == 0
      first_name, last_name = id.split(",")
      find_by_first_name_and_last_name(first_name, last_name)
    else
      find(id)
    end
  end
end