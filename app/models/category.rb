class Category < ActiveRecord::Base
  has_many :chairs
  validates_presence_of :name
end
