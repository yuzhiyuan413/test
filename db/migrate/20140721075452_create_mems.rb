class CreateMems < ActiveRecord::Migration
  def change
    create_table :mems do |t|
      t.string :recsts,:limit=>1,:default=>"0"
      t.string :pwd
      t.integer :age
      t.string :userid
      t.string :nc
      t.string :email
      t.string :addr
      t.string :mobile
      t.belongs_to :pic
      t.timestamps
    end
  end
end
