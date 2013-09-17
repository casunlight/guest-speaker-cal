class AddSpeakerController < ApplicationController

  def new
    @speaker = Speaker.new
    @day = Day.find_by_id(params[:day_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speaker }
    end
  end

  def edit
    @speaker = Speaker.find(params[:speaker_id])
    @day = Day.find_by_id(params[:day_id])
  end
end
