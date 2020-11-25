class Reservation < ApplicationRecord
  belongs_to :baller
  belongs_to :vip_lounge
end
