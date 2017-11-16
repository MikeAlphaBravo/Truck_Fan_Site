class CommentsController < ApplicationController

  def new
    @truck = Truck.find(params[:truck_id])
    @comment = @truck.comments.new
  end

  def create
    @truck = Truck.find(params[:truck_id])
    @comment = @truck.comments.new(comment_params)
    if @comment.save
      redirect_to truck_path(@comment.truck)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :author)
  end
end
