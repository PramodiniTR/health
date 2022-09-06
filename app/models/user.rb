class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
  has_one :user_profile
  has_many :user_skills
  has_many :user_utilizations
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :login_audits
  has_many :master_types, through: :user_skills

  enum status: { active: 1, inactive: 0 }
end
