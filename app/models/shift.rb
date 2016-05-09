class Shift < ActiveRecord::Base
  belongs_to :task
  has_many :users
end
