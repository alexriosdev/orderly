class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client
  
  validates :purpose, :message, { presence: true }
  validate :end_must_be_after_start  

  validate :overlapping
  
  def start_date
    self.start_time.strftime("%A, %B %d, %Y")    
  end

  def end_date
    self.end_time.strftime("%A, %B %d, %Y")    
  end

  def start_hour
    self.start_time.strftime("%I:%M %p")
  end

  def end_hour
    self.end_time.strftime("%I:%M %p")
  end
  
  private

  def overlapping
    if Appointment.where('? <  end_time and ? > start_time', self.start_time, self.end_time).any?
      errors.add(:end_time, "overlaps with another time slot in schedule")
    end
  end
  
  def end_must_be_after_start
    if self.start_time >= self.end_time
      errors.add(:end_time, "must be after Start time")
    end
  end

end