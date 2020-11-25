class VipLoungesController < ApplicationController
  def index
    @vip_lounge = VipLounge.all
  end
end
