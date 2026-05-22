class TrackerController < ApplicationController
  before_action :require_login

  def index
    @user = current_user
    @lap_count = @user.laps.where(archived_at: nil).count
  end

  def log_lap
    current_user.laps.create!(logged_at: Time.current)
    redirect_to root_path
  end

  def undo_lap
    current_user.laps.where(archived_at: nil).order(logged_at: :desc).first&.destroy
    redirect_to root_path
  end

  def clear_laps
    current_user.laps.where(archived_at: nil).destroy_all
    redirect_to root_path
  end

  def archive_laps
    current_user.laps.where(archived_at: nil).update_all(archived_at: Time.current)
    redirect_to root_path
  end
end
