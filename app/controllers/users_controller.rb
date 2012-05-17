class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to home_url, :notice => "Congrats on your membership, #{@user.firstname}!"
    else
      redirect_to new_user_url, :notice => 'You seem to have some errors...'
    end
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end
  
end