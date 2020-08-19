class UsersController < ApplicationController

  before_action :set_parents, only: [:index, :show]

  def index
    @favorite = Item.joins(:favorites).where(favorites: {user: current_user.id})
  end

  def show
    @nickname = current_user.nickname
    @image = current_user.user_image
    @user_des = current_user.destination
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end
end

private

def set_parents
  @parents = Category.where(ancestry: nil)
end


