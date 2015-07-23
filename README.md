Crowdfunder Project: A Kickstarter Clone
-------------------------------------------------------------------------
Collaborators: Keegan Wade, Paul Marshall, Craig Franklin, & Rebecca Qu

Our Trello link: https://trello.com/b/DbqVminQ/crowdfunder

Implementation Process: 

1. Prioritizing User Stories
2. Modelling Relationships
3. UI & Wireframing
4. Github set-up with collaborators
5. Break up project into workable pieces
6. Determine deadlines for smaller milestones

Models and Relationships: 

  - Project: name, description, funding_goal, start_date, end_date, category, 
  - Project Foreign IDs: user_id (owner)
  
  - User: first_name, last_name, email, password, password_confirmation

  - Pledge: ---
  - Pledge Foreign IDs: user_id (backer), reward_id
  
  - Reward: name, description, amount, availability
  - Reward Foreign IDs: project_id









