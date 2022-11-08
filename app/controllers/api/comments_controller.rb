module Api
  class CommentsController < ApplicationController
      # GET /comments or /comments.json
      def index
        @comments = Comment.all
      end

      # GET /comments/1 or /comments/1.json
    def show
      @comment = Comment.find(params[:id])
    end

    # GET /comments/new
    def new
      @comment = Comment.new
    end

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id
      # @comment = Comment.new(comment_params)

      if @comment.save
        redirect_to @post
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy

      redirect_to post_path(@post), status: :see_other
    end


  private
  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:body,:user_id,:post_id)
  end
end
