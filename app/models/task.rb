class Task < ActiveRecord::Base
  validates_numericality_of :end_time, greater_than: :start_time
  belongs_to :user
  belongs_to :type
  belongs_to :event, dependent: :destroy
  has_many :shifts


  def to_hours_and_minutes(time)
    if time.nil?
      "N/A"
    else
      time.strftime("%H:%M")
    end
  end
end
