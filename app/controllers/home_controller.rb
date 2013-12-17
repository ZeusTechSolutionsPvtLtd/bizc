class HomeController < ApplicationController
  before_filter :require_login, :only => :step1s
  
  def index
  end

  def secret
  end
end
