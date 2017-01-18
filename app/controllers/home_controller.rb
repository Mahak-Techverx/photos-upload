class HomeController < ApplicationController
	def index
		@admin_posts = Admin::Post.all

	end

	def show
		@admin_posts = Admin::Post.all
		@admin_post = Admin::Post.find(params :id , :order  => "created_at DESC")

	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_post
    	@admin_post = Admin::Post.find(params :id , :order  => "created_at DESC")

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_post_params
    	params.require(:admin_post).permit(:title, :image, :description, :avatar, :created_at)
    end



end
