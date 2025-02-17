class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  
  def create
    Posts.create(memo: params[:memo])
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
