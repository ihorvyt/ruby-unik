class PostsController < ApplicationController
    before_action :authenticate_user!  # Optional: ensures the user is logged in
    before_action :set_post, only: [:show, :edit, :update, :destroy]
  
    def index
      @posts = Post.all  # Fetch all posts to display in the index view
    end
  
    def new
      @post = Post.new  # Initialize @post as a new instance of the Post model
    end
  
    def create
      @post = current_user.posts.new(post_params)  # Associate the post with the current user
  
      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new  # Render the 'new' template again if the post is invalid
      end
    end
  
    def show
      # @post is already set by the set_post method
    end
  
    def edit
        
      # @post is already set by the set_post method
    end
  
    def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit  # Render the 'edit' template again if the update fails
      end
    end
  
    def destroy
        if current_user.admin? || @post.user == current_user
          @post.destroy
          redirect_to posts_path, notice: 'Post was successfully deleted.'
        else
          redirect_to posts_path, alert: 'You can only delete your own posts.'
        end
      end
    private
  
    def post_params
      params.require(:post).permit(:title, :content, :image)  # Permit necessary parameters for post creation
    end
  
    def set_post
      @post = Post.find(params[:id])  # Find the post by its ID passed in the URL
    end
  end
  