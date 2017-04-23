class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end
  def login
    render template: "pages/#{params[:page]}"
  end
end
