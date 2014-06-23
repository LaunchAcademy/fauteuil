class Chair < ActiveRecord::Base
	belongs_to :user
  belongs_to :category
	has_many :reviews

	validates_uniqueness_of :name
	validates_presence_of :name
  validates_presence_of :location

end
