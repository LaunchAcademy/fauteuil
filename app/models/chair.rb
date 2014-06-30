class Chair < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
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

  def update_average_rating
    @value = 0
    self.reviews.each do |review|
      @value = @value + review.rating
    end

    @total = self.reviews.size

    update_attributes(average_rating: @value.to_f / @total.to_f)
  end

end
