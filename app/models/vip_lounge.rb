class VipLounge < ApplicationRecord
  has_many :reservations
  has_many :ballers, through: :reservations
end
