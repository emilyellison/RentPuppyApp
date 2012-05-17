class PuppiesController < ApplicationController
  
  def index
    @puppies = Puppy.all
    
  end
  
  def show
    @puppy = Puppy.find_by_id(params[:id])

  end
  
end