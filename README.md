Crowdfunder Project: A Kickstarter Clone
-------------------------------------------------------------------------
Collaborators: Keegan Wade, Paul Marshall, Craig Franklin, & Rebecca Qu

Our Trello link: https://trello.com/b/DbqVminQ/crowdfunder

IMPLEMENTATION PROCESS

1. Prioritizing User Stories
2. Modelling Relationships
3. UI & Wireframing
4. Github set-up with collaborators
5. Break up project into workable pieces
6. Determine deadlines for smaller milestones

MODELS

  - Project: name, description, funding_goal, start_date, end_date, category, 
  - Project Foreign IDs: user_id (owner)
  
  - User: first_name, last_name, email, password, password_confirmation
    
  - Reward: name, description, amount, availability
  - Reward Foreign IDs: project_id
  
  - Pledge: ---
  - Pledge Foreign IDs: user_id (backer), reward_id

ASSOCIATION RELATIONSHIPS 

Project:
- has_many :rewards
- has_many :pledges, through: :rewards
- has_many :backers, class_name: 'User', through: :pledges
- belongs_to :owner, class_name: 'User'

User:
- has_many :pledges
- has_many :rewards, through: :pledges
- has_many :owned_projects, class_name: 'Project', source: "owner"
- has_many :backed_projects, class_name: 'Project', through: :pledges, source: "project"

Reward:
- belongs_to :project
- has_many :pledges
- has_many :users, through: :pledges

Pledge:
- has_one :project, through: :reward
- belongs_to :reward
- belongs_to :user










