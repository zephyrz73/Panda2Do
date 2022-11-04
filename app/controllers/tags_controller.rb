class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @posts = Post.where(user: params[:id]).all
  end

  def create
    @tag = Tag.new(name: params[:name], description: params[:description])
    if @tag.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
