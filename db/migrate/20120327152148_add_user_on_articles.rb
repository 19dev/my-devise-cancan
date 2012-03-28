class AddUserOnArticles < ActiveRecord::Migration
  def up
    add_column :articles, :user_id, :integer
  end

  def down
  end
end
