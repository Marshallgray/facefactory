class Group < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships

  mount_uploader :logo, GoupLogoUploader
end
