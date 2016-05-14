class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  belongs_to :event, dependent: :destroy
  has_many :shifts

end
