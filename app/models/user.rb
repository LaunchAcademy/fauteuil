class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable
  has_many :chairs
  has_many :reviews
  has_many :votes
  validates :username, presence: true, uniqueness: true
  Validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: {in: ["user", "admin"]}

  def admin?
    if role == "admin"
  end

end
