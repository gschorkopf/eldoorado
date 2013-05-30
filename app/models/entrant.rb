class Entrant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :guest?, :access_type
end