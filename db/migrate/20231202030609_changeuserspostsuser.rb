class Changeuserspostsuser < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :posts_counter, :posts_count
  end
end
