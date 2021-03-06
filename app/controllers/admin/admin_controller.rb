class Admin::AdminController < ApplicationController
  before_filter :signed_in_user, only: [:index]

  def index
  end

  private

  def signed_in_user
    redirect_to signin_path unless signed_in_admin?
  end

end
