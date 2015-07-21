Crowdfunder Project: A Kickstarter Clone

Collaborators: Keegan Wade, Paul Marshall, Craig Franklin, & Rebecca Qu

Our Trello link: https://trello.com/b/DbqVminQ/crowdfunder
-------------------------------------------------------------------------

Implementation Process: 

1. Prioritizing User Stories (can be found in Trello)
2. Modelling Relationships
3. UI & Wireframing
4. Github set-up with collaborators
5. Break up project into workable pieces
6. Determine deadlines for smaller milestones

Models & Associations: 

- Project : name, description, funding_goal, start_date, end_date, (photos)
  
- User : first_name, last_name, email, password
  
- Pledge : amount ($)
  
- Reward : name, description, amount, availability 
  
- Category 
  
- Review


Project: 
  
- has_many: pledges
- has_many: rewards
- has_many: backers, through:pledges, class_name: 'User'
- has_many: owners, class_name: 'User'
  

User: 
  
- has_many: pledges
- has_many: owned_projects, class_name: 'Project'
- has_many: backed_projects, through: pledges, class_name: 'Project'
  

Pledge: 
  
- belongs_to: user
- belongs_to: project
- belongs_to: reward
  

Reward:
  
- belongs_to: project



