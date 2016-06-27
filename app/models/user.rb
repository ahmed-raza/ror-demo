class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :first_name, presence: true

  has_one :attachment, as: :attachable, dependent: :destroy

  GENDER = ["Male", "Female"]

  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
