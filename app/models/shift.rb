class Shift < ActiveRecord::Base
  belongs_to :task
  belongs_to :user


  def value
    if self.hour > 9
      s = "" << self.hour.to_s << ".00"
    else
      s = "0" << self.hour.to_s << ".00"
    end
  end
end
