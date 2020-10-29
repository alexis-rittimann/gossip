class StaticPagesController < ApplicationController

  def contact
  end

  def team
    @users = User.all
  end

end
