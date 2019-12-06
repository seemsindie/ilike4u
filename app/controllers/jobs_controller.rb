class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.where(user_id: current_user)
  end

  def new
    @user = current_user
    @job = Job.new
  end

  def create
    @user = User.find(params[:user_id])
    @job = Job.new(job_params)
    @job.user = @user
    @job.launched_at = Time.now + 60.minutes
    @job.image_url = 'https://www.instagram.com/p/B5uiUfIjmoJ/'
    @job.save
    given_likes = GivenLike.new(
      ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
      job_id: @job.id
    )
    given_likes.save

    # Bot.insta_bot(@job)

    # redirect_to user_jobs_path(current_user)

    redirect_to user_job_run_path(current_user.id, @job.id)
  end

  def show
    @job = Job.find(params[:id])
    @likes_backs = rand(0..@job.given_likes.count)
    @job.hashtag = params[:hashtag] if @job.hashtag.nil?
    @job.followers_gained = 0 if @job.followers_gained.nil?
    @job.likes_received = 1 if @job.likes_received.nil?
    @job.stopped_at = Time.now + 61.minutes if @job.stopped_at.nil?
    @jobtime = ((@job.stopped_at - @job.launched_at) / 60).round
  end

  def edit
    @user = User.find(params[:user_id])
    @job = Job.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to user_jobs_path(@user)
  end

  def run
    # redirect_to user_job_run_path(@user)
  end

  private

  def job_params
    params.require(:job).permit(:caption, :hashtag, :user_id, :likes_received, :launched_at, :instagram_username, :instagram_password, :followers_gained, :stopped_at)
  end
end
