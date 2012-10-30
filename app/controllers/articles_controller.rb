class ArticlesController < ApplicationController

  def index
    @posts = Post.where(:pcid => 1).order("created_at ASC")
  end

  def show
    @post = Post.find(params[:id])
  end

end
