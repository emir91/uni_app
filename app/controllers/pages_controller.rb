class PagesController < ApplicationController
  skip_before_action :require_user

  def home
    redirect_to courses_path if logged_in?
    render 'pages/home.html.erb'
  end

end