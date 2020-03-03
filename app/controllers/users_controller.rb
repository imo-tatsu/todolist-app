class UsersController < ApplicationController
  def index
    @users = user.all
  end

  def edit
  end
end

