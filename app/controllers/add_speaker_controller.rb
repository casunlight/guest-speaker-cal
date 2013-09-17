class AddSpeakerController < ApplicationController

  def new
    @speaker = Speaker.new
    @day_id = params[:day_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speaker }
    end
  end
end
