class Vote < ActiveRecord::Base
	belongs_to :review
	belongs_to :user

  validates :like,  presence: true
  validates :like, inclusion: {in: -1..1}

end
