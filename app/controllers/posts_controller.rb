class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    elsif post.checked = "false"
      post.update(checked: true)
    else
      post.update(checked: false)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end