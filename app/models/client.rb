class Client < ApplicationRecord
  has_many :appointments
  has_many :employees, through: :appointments
  belongs_to :admin
end
