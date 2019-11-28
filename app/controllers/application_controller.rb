class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    new_user_job_path(resource.id)
  end

  def after_sign_up_path_for(resource)
    new_user_job_path(resource.id)
  end
end
