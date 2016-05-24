class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.profile
        @profile = current_user.profile
        @status_update = StatusUpdate.new
        @status_updates = StatusUpdate.order(created_at: :desc)
      else
        @profile = Profile.new

      end
    end
  end
end
