class Vote < ActiveRecord::Base
	belongs_to :review
	belongs_to :user

  validate_presence_of :like
  validate :like, inclusion: {in: -1..1}

end
