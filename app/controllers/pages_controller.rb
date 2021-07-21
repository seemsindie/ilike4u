class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:register_final]
  def home
  end

  def register_final
  end

end
