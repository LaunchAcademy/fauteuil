class Review < ActiveRecord::Base
 belongs_to :chair
 belongs_to :user
 has_many :votes

 validates_presence_of :body
 #todo validating the range and the step increment
 validates :rating,
  presence: true,
  inclusion: { in: 1..5 }
  # validate :rating_is_valid_increment

# def rating_is_valid_increment
#   unless rating % 0.5 == 0
#     errors.add(:rating, "must be in increments of 0.5 only.")
#   end
# end

end

