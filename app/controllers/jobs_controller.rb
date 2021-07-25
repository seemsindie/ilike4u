class JobsController < ApplicationController
  before_action :authenticate_user!, :except => [:add_like, :update_latest_image, :update_avatar]
  # skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, :only => [:add_like, :update_latest_image, :update_avatar]


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
    @job.launched_at = Time.now # we already have created_at
    @job.save

    # given_likes = GivenLike.new(
    #   ig_media_id: "https://www.instagram.com/p/B5o-Gj1o1Zf/",
    #   job_id: @job.id
    # )
    # given_likes.save

    # Bot.insta_bot(@job)

    # redirect_to user_jobs_path(current_user)

    process_pid = Process.spawn("node ./app/services/bot.js #{job_params[:instagram_username]} #{job_params[:instagram_password]} #{job_params[:hashtag]} #{params[:user_id]} #{@job.id}")

    # Process.spawn('pwd')
    @job.process_pid = process_pid
    @job.save

    redirect_to user_job_path(current_user.id, @job.id)
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

  def stop
    @job = Job.find(params[:job_id])

    if !@job.process_pid.nil?
      Process.kill("HUP", @job.process_pid.to_i)
    end

    @job.process_pid = nil
    @job.save

    redirect_to user_job_path(params[:user_id], @job.id)
  end

  def add_like
    gl = GivenLike.new

    gl.ig_media_id = params[:ig_media_id]
    gl.ig_user_id = params[:ig_user_id]
    gl.image = params[:image]
    gl.job = Job.find(params[:job_id])

    gl.save!

    render json: gl
  end

  def update_latest_image
    job = Job.find(params[:job_id])

    # binding.pry
    job.image = params[:image]
    job.save!

    render json: job
  end

  def update_avatar
    job = Job.find(params[:job_id])

    # binding.pry
    job.avatar = params[:image]
    job.save!

    render json: job
  end

  private

  def job_params
    params.require(:job).permit(:caption, :hashtag, :user_id, :likes_received, :launched_at, :instagram_username, :instagram_password, :followers_gained, :stopped_at)
  end
end
