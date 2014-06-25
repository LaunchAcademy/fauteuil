class Review < ActiveRecord::Base
  belongs_to :chair
  belongs_to :user
  has_many :votes

  validate :body, presence: true

  validates_numericality_of :rating, greater_than_or_equal_to: 0.0, less_than_or_equal_to: 5.0

  validate :rating_is_valid_increment

  def rating_is_valid_increment
    if rating && rating % 0.5 != 0
      errors.add(:rating, "must be in increments of 0.5 only.")
    end
  end

end

