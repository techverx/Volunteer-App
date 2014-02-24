class HomeController < ApplicationController
  add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
  def index
    @users = User.all
  end
end
