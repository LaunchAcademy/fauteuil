class Review < ActiveRecord::Base
 belongs_to :chair
 belongs_to :user
 has_many :votes

 validates_presence_of :body
 #todo validating the range and the step increment
 validates_presence_of :rating
end
