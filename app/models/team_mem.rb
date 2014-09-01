class TeamMem < ActiveRecord::Base
  attr_protected 
  belongs_to :mem
  belongs_to :team
end
