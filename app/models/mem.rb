class Mem < ActiveRecord::Base
  attr_protected 
  has_one :team_mem
  has_one :team,through: :team_mem
end
