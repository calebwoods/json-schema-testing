class PostsController < ApplicationController

  def index
    @posts = Post.published
    render json: @posts, adapter: :json, include: [ :author, { comments: :author } ]
  end

end
