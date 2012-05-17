class Bidding < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :quality, :value, :walk_id
  
  belongs_to :walk
  
end
