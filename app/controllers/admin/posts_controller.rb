class Admin::PostsController < AdminController
  before_action :set_admin_post, only: [:show, :edit, :update, :destroy]

  # GET /admin/posts
  # GET /admin/posts.json
  def index
    if current_user.present? and current_user.has_role? :admin
    @admin_posts = Admin::Post.all
      
    elsif current_user.present? and current_user.has_role? :user
      @admin_posts = Admin::Post.where(user_id: current_user.id)
    end

  end

  # GET /admin/posts/1
  # GET /admin/posts/1.json
  def show
  end

  # GET /admin/posts/new
  def new

   @admin_post = Admin::Post.new
 end

  # GET /admin/posts/1/edit
  def edit
    authorize! :update, Admin::Post
  end

  # POST /admin/posts
  # POST /admin/posts.json
  def create
    @admin_post = Admin::Post.new(admin_post_params)
    @admin_post.user_id = current_user.id if current_user.present?

    respond_to do |format|
      if @admin_post.save
        format.html { redirect_to admin_posts_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @admin_post }
      else
        format.html { render :new }
        format.json { render json: @admin_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/posts/1
  # PATCH/PUT /admin/posts/1.json
  def update
    respond_to do |format|
      if @admin_post.update(admin_post_params)
        format.html { redirect_to admin_posts_path, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_post }
      else
        format.html { render :edit }
        format.json { render json: @admin_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/posts/1
  # DELETE /admin/posts/1.json
  def destroy
    @admin_post.destroy
    respond_to do |format|
      format.html { redirect_to admin_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_post
      @admin_post = Admin::Post.find(params[:id])
    end
     
    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_post_params
      params.require(:admin_post).permit(:title, :image, :description, :avatar, :user_id, :created_at)
    end
  end
