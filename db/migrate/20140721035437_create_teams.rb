class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :recsts,:limit=>1,:default=>"0"
      t.string :name
      t.string :logo
      t.string :manifesto
      t.integer :success
      t.integer :failure
      t.integer :score
      t.integer :captain

      t.timestamps
    end
  end
end
