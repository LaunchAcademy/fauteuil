class Chair < ActiveRecord::Base
	belongs_to :user
  belongs_to :category
	has_many :reviews

	validates :name, uniqueness: true
	validates :name, presence: true
  validates :location, presence: true

end
