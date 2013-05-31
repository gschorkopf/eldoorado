class Entrant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :guest, :access_type, :company_id

  has_many :badge_scans
  belongs_to :company

  def as_json(options={})
    super(except: [:created_at, :updated_at])
  end
end