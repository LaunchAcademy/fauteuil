class Vote < ActiveRecord::Base
	belongs_to :review
	belongs_to :user

  validates :value,  presence: true
  validates :value, inclusion: {in: -1..1}

end
