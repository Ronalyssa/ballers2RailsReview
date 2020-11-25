class Baller < ApplicationRecord
  has_many :reservations
  has_many :vip_lounges, through: :reservations

  def self.flashiest_baller
    self.all.max_by do |baller|
      baller.reservations.size
    end
  end
end
