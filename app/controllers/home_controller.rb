class HomeController < ApplicationController
  def index
    @users = User.all
  end
  
  def main
    @users = User.all
  end
end
