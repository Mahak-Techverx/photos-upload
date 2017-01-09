class AddUserToAdminPosts < ActiveRecord::Migration[5.0]
  def change
  	 add_column :admin_posts, :user_id, :integer
  end
end
