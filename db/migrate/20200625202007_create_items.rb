class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id 
      t.string :title 
      t.string :description 
      t.string :picture 
      t.string :price
      t.string :category 
      t.timestamps
    end
  end
end
