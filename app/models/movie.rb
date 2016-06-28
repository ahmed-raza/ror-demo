class Movie < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, :length => { :minimum => 20 }

  has_many :attachments, as: :attachable

  accepts_nested_attributes_for :attachments
end
