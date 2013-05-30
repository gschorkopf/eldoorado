class Entrant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :guest, :access_type, :company_id

  has_many :badge_scans
  belongs_to :company

  def to_s
    "#{first_name} #{last_name}"
  end
end