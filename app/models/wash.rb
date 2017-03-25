class Wash < ApplicationRecord
  belongs_to :vehicle_type

  before_create Rules.new

end
