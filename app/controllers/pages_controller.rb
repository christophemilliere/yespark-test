class PagesController < ApplicationController

  before_action :redirect_current_user

  def home
  end

  private

  def redirect_current_user
    return redirect_to parkings_path  if current_user
  end
end
