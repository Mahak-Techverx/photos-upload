class Admin::UsersController < AdminController


	def index

		 
    if current_user.present? and current_user.has_role? :admin
      @admin_users = User.all
    end
		
	end


	def ban
		
		@user = User.find_by_id params[:user_id]
		@user.update(ban: params[:status])
		
		@admin_users  = User.all



	end
	


	private
	
     

	def user_params
		params.require(:user).permit(:name, :email)
	end
   

end
