class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client

  def time_select
  end

end
