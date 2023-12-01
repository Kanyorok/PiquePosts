class Changepostsfield < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :Title, :title
    rename_column :posts, :Text, :text
    rename_column :posts, :Comments_counter, :comments_counter
    rename_column :posts, :Likes_counter, :likes_counter
  end
end
