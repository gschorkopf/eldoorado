class Company < ActiveRecord::Base
  attr_accessible :name

  has_many :entrants

  def to_s
    name
  end
end
