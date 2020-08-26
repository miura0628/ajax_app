class PostsController < ApplicationController

  def index
    @posts = Posts.all
  end

  
  def new
    
  end

  def create
    Posts.create(memo: params[:memo])
  end
end
