class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def new
    @user = current_user
    @job = Job.new
  end

  def create
    @user = User.find(params[:user_id])
    @job = Job.new(job_params)
    @job.user = @user

    @job.save

    Bot.insta_bot(@job)

    redirect_to user_job_path(@user, @job.id)
  end

  def show
    @job = Job.find(params[:id])
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

  private

  def job_params
    params.require(:job).permit(:caption, :hashtag, :user_id, :likes_received, :launched_at, :instagram_username, :instagram_password)
  end
end
