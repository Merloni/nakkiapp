class Event < ActiveRecord::Base
  validates_presence_of :name, :place
  belongs_to :user
  belongs_to :place
  has_many :tasks



end
