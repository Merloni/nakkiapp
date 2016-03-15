class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  belongs_to :event, dependency: :destroy
end
