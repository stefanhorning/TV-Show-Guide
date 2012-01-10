class AdminController < ApplicationController
  load_and_authorize_resource
  before_filter :require_user

  def index
 
  end
end
