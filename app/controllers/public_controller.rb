class PublicController < ApplicationController
  def show
    @user = User.find_by!(share_token: params[:share_token])
    @lap_count = @user.laps.where(archived_at: nil).count
  end
end
