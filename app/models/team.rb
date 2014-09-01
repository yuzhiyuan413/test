class Team < ActiveRecord::Base
  attr_protected 
  has_many :team_mems
  has_many :mems,through: :team_mems
end
