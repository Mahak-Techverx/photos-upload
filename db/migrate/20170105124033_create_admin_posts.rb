class CreateAdminPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_posts do |t|
      t.string :title
      t.string :image
      t.text :description
      t.attachment :avatar

      t.timestamps
    end
  end
end
