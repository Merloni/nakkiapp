class Place < ActiveRecord::Base
  has_many :events
  geocoded_by :address
  after_validation :geocode

  def name_with_address
    "#{name} (#{address})"
  end
end
