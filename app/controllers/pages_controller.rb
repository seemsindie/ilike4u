class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:register_final, :register_shadowbaning]
  def home
  end

  def register_final
  end

  def register_shadowbaning
  end

end
