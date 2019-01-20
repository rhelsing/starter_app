class AdminAccessController < ApplicationController
  before_action :verify_access

  private
  def verify_access
    authenticate_user!
    raise "No admin users env var defined" if ENV['ADMIN_USERS'].blank?
    raise "Not allowed to access admin #{current_user.email}" if !ENV['ADMIN_USERS'].split(',').map{|x| x.strip }.include?(current_user.email)
  end
end
