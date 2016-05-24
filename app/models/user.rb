class User < ApplicationRecord
  has_one :profile
  has_many :status_updates
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :user_roles
  has_many :roles, through: :user_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    role =Role.find_by(name: 'admin')
    self.roles.include?(role)
  end
end
