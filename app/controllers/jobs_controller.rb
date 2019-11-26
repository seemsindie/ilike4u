class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @user = User.find(params[:user_id])
    @job = Job.new
  end

  def create
    @user = User.find(params[:user_id])
    @job = Job.new(job_params)
    @job.user = @user
    @job.save
    redirect_to user_jobs_path(@user)
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
    params.require(:job).permit(:image_url, :caption, :hastag, :user_id, :likes_received, :launched_at, :stopped_at)
  end
end
