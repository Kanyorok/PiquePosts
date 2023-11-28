class AddPostCounter < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :post_counter, :integer
  end
end
