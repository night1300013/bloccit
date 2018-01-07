class PostsController < ApplicationController
  def index
    Post.all.each do |post|
      if post.id % 5 == 1
        post.title = "SPAM"
        post.save
      end
    end
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
