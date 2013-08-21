class CreateTweets < ActiveRecord::Migration
  def change 
    create_table :tweets do |tweet|
      tweet.string :body
      tweet.belongs_to :user 

      tweet.timestamps
    end
  end
end
