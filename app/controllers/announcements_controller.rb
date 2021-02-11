class AnnouncementsController < ApplicationController
  before_action :authenticate_user!

  def show
    @announcement = Announcement.find(params[:id])
  end

  def new
    @announcement = Announcement.new
  end

  def index
    @announcements = Announcement.where('expiration >= ?',Date.current)
  end

  def create
    @announcement = current_user.announcements.build(announcement_params)
    if @announcement.save
      redirect_to @announcements
    else
      render 'new'
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:announcement, :expiration)
  end
end
