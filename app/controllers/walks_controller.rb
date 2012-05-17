class WalksController < ApplicationController

	def	show
	  @walk = Walk.find_by_id(params[:id])
    session[:walk_option] = @walk.id
    
    @first = @walk.biddings.sort_by{ |x| -(x.value * x.quality) }.first
    @second = @walk.biddings.sort_by{ |x| -(x.value * x.quality) }.second
    
    if @first && @second
      @price = @second.value * ((@second.quality * 1.0) / @first.quality)
    elsif @first
      @price = @first.value
    end
	end
	
end