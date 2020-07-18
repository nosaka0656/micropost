class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build #form_with用
      @microposts = current_user.microposts.order(id: :desc).page(params[:id])
    end
  end
end
