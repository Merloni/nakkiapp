class Place < ActiveRecord::Base
  has_many :events
  validates_presence_of :name, :address
  geocoded_by :address
  after_validation :geocode

  def name_with_address
    "#{name} (#{address})"
  end
end
