class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :sentance_1
      t.string :sentance_2
      t.string :sentance_3
      t.string :sentance_4
      t.string :user_first_name
      t.string :user_last_name
      t.string :story_title 
      t.string :old_job 
      t.string :product 

      t.timestamps
    end
  end
end
