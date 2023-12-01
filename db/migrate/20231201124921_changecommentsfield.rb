class Changecommentsfield < ActiveRecord::Migration[7.1]
  def change
    rename_column :comments, :Text, :text
  end
end
