class PagesController < ApplicationController
  skip_before_action :require_user

  def home
    render 'pages/home.html.erb'
    redirect_to courses_path if logged_in? and return
  end

end