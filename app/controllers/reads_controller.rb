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
end
