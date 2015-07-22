class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :pledges
  has_many :rewards, through: :pledges
  has_many :owned_projects, class_name: 'Project', source: "owner"
  has_many :backed_projects, class_name: 'Project', through: :pledges, source: "project"


  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end