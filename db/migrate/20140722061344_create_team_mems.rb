class CreateTeamMems < ActiveRecord::Migration
  def change
    create_table :team_mems do |t|
    	t.string :recsts,:limit=>1,:default=>"0"
      t.integer :team_id
      t.integer :mem_id
      t.string :role

      t.timestamps
    end
  end
end
