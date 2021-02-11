class ReadsController < ApplicationController

  def new
    @read = Read.new
  end

  def Create
    @read = Read.new(read_parameters)
    if @read.save
      redirect_to @announcements
    end
  end
  
  private

  def read_parameters
    params.require(:reads).permit(:announcement_id, current_user.id)
  end
end
