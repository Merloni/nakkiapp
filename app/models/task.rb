class Task < ActiveRecord::Base
  validate :times_must_be_correct
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
  def times_must_be_correct
    errors.add(:base, 'Loppuaika on oltava alkuajan jälkeen') unless (self.end_time >= self.start_time)
  end

end
