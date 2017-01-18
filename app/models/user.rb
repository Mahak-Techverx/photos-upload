class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :admin_posts

    after_create :assign_role

def check_ban_user
  if resource.is_a?(User) && resource.ban = true
    sign_out resource
    root_path

  else 
    sign_in resource

  end
  
end


def active_for_authentication?
    super && !self.ban?
  end


    def assign_role
    	role = Role.find_by_name('user')
    	self.roles << role
    end

    
end
