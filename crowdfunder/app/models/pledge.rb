class Pledge < ActiveRecord::Base
  has_one :project, through: :reward
  belongs_to :reward
  belongs_to :user
end
