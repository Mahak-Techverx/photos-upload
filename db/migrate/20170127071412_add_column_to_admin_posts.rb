class AddColumnToAdminPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :admin_posts, :clicks, :integer, :default =>0 , :null => false
    
  end
end
