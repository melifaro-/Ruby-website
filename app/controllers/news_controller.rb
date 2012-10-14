class NewsController < ApplicationController

  def index
    @posts = Post.where(:pcid => 0)
  end

  def show
    @post = Post.find(params[:id])
  end

end
