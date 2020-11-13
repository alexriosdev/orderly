class Client < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments

  validates :name, :email, :phone_number, { presence: true }
  validates :name, :email, :phone_number, { uniqueness: true }

end
