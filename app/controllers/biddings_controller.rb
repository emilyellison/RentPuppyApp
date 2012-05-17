class BiddingsController < ApplicationController
  
  def index
    @puppies = Puppy.all
  end
  
  def new
    @bidding = Bidding.new
    @walk = Walk.find_by_id(params[:id])
  end
  
  def create
    @walk = Walk.find_by_id(params[:id])
    @bidding = Bidding.new(params[:bidding])
  
    if @bidding.save
      redirect_to puppies_url, :notice => 'Congrats! Your bid has been submitted!'
    else
      redirect_to new_bidding_url, :notice => 'There was an error. Please try again.'
    end
  end
  
end