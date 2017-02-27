class PostsController < ApplicationController

  def index
    @posts=Post.all.order('created_ad DESC')
  end

  def show
      @post = Post.find(params[:id])
      @posts=Post.all.order('created_ad DESC').limit(4).offset(1)

  end

  private
    def post_paramsc s
        params.require(:post).permit(:title, :body)
    end

end
