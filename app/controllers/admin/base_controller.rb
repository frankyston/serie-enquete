class Admin::BaseController < ApplicationController
  before_action :only_admin
  layout 'admin'

  private

  def only_admin
    authenticate_user!
    redirect_to root_url unless current_user.admin?
  end
end
