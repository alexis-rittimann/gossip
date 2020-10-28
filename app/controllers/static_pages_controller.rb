class StaticPagesController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def contact
  end

  def team
    @users = User.all
  end
  def details
    @gossip = Gossip.find(params[:id])
  end
end
