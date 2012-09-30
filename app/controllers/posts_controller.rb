class PostsController < ApplicationController
  def all
  	@posts = Post.all
  end

  def item
  	@post = Post.find(params[:id])
  end
end
