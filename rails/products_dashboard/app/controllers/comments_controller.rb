class CommentsController < ApplicationController
  def create
    #Comment.create(user_params)
    Comment.create(comment:params[:comment], product_id:params[:id])
    #id = params[:id]
    redirect_to "/products/#{params[:id]}"
  end

  def index
    @comments = Comment.all
  end

  private

  def user_params
   params.require(:comment).permit(:id)
  end
end
