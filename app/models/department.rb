class Department < ApplicationRecord
  has_many :employees
  belongs_to :admin
end
