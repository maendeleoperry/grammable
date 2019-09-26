class Gram < ApplicationRecord
  validates :message, presence: true
  validates :picture, presence: true
  belongs_to :user
  has_many :comments
  has_many :pictures
  mount_uploader :picture, PictureUploader
end
