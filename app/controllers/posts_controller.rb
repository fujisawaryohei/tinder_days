class PostsController < ApplicationController
  def new
  end

  def create
    @post=Post.new(id:params[:id],user_id:current_user.id,question:params[:question],select1:params[:select1],select2:params[:select2],select3:params[:select3],select4:[:select4],answer:params[:answer])
    if @post.save
      redirect_to("/posts")
    else
      render("posts/new")
    end
  end

  def index
    @posts=Post.all
  end

  def show
    @post=Post.find_by(id: params[:id])
  end

  def success
    @post=Post.find_by(id:params[:id],user_answer:params[:user_answer])
    if @post.answer==@post.user_answer
       render 'posts/success'
     else
       redirect_to('/posts/index')
    end
  end
end
