class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  has_many :tasks
end
