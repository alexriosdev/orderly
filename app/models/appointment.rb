class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :client
  belongs_to :admin
end
