class Puppy < ActiveRecord::Base
  attr_accessible :address, :name
  
  has_many :walks
  
end
