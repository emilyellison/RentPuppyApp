class Walk < ActiveRecord::Base
  attr_accessible :puppy_id, :walk_date
  
  belongs_to :puppy
  has_many :biddings
end
