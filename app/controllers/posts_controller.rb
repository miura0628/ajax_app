class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  
  def create
    Posts.create(memo: params[:memo])
  end
end
