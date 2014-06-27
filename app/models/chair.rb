class Chair < ActiveRecord::Base
	belongs_to :user
  belongs_to :category
	has_many :reviews
  mount_uploader :picture, PictureUploader

	validates :name, uniqueness: true
	validates :name, presence: true
  validates :location, presence: true

  def self.search(search)
    if search
      find(:all, :conditions => ['name ILIKE ? OR location ILIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end
