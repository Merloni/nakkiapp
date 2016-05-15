class Task < ActiveRecord::Base
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
