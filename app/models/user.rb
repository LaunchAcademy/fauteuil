class User < ActiveRecord::Base
	has_many :chairs
  has_many :reviews
  has_many :votes
	validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :email
  validates :role, inclusion: {in: ["user", "admin"]}
	validates_uniqueness_of :username
  validates_uniqueness_of :email
end
