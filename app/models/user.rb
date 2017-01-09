class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :admin_posts

    after_create :assign_role



    def assign_role
    	role = Role.find_by_name('user')
    	self.roles << role
    end
    
end
