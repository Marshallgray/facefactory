class StatusUpdate < ApplicationRecord
  belongs_to :user
  validates :status, presence: true

  mount_uploader :image, StatusUpdateImageUploader
end
