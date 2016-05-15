class Task < ActiveRecord::Base
  validate :end_time_is_after_start_time
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
  def end_time_is_after_start_time
    if end_time < start_time
      errors.add(:end_time, "must be after start time")
    end
  end

end
