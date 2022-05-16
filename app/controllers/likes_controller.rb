class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)

    flash[:notice] = @likes.errors.full_messages.to_sentence unless @like.save

    redirect_to request.referrer
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy

    redirect_to request.referrer
  end

  private

  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type)
  end
end
