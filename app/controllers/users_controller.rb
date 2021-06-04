class UsersController < ApplicationController

  def show
    @box = current_user.box
  end

  def index
    @item = current_user.item
  end

end