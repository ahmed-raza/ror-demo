class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :first_name, presence: true

  has_one :attachment, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachment

  GENDER = ["Male", "Female"]

  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def profile_picture(style)
    if self.attachment
      self.attachment.image.url(style)
    else
      "/assets/medium/missing.png"
    end
  end

  def age
    if self.birth_date
      age = (Date.today - self.birth_date).to_i / 365.year
    "#{age} years"
    end
  end
end
