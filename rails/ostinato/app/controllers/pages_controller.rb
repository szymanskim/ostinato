class PagesController < ApplicationController
  def show
    if params[:page] == 'home'
      home
    end

    render template: "pages/#{params[:page]}"
  end

  def home
    @news = Post.all.order('updated_at DESC').
      select { |post| Topic.find(post.topic_id).public == true }.first(3)
  end
end
