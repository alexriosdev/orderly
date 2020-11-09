class Admin < ApplicationRecord
  has_many :appointments
  has_many :departments
  has_many :clients
  has_many :employees
end
