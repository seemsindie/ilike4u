class GivenLikesController < ApplicationController
  def index
    @given_likes = GivenLike.all
  end

  def new
    @user = User.find(params[:user_id])
    @job = Job.find(params[:job_id])
    @given_like = GivenLike.new
  end

  def create
    @user = User.find(params[:user_id])
    @job = Job.find(params[:job_id])
    @given_like = GivenLike.new(given_like_params)
    @given_like.save
  end

  private

  def given_like_params
    params.require(:given_like).permit(:ig_media_id, :ig_user_id, :job_id)
  end
end
