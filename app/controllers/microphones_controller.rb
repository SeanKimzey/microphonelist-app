class MicrophonesController < ApplicationController

  def index
    microphones = Microphone.all

    render json: microphones.as_json
  end

  def create
    microphone1 = Microphone.new(
      make: params[:the_make],
      model: params[:the_model],
      mictype: params[:the_mic_type],
      price: params[:the_price]
      )
    microphone1.save
    render json: microphone1.as_json
  end

  def show

    the_id = params[:id]
    microphone = Microphone.find_by(id: the_id)
    render json: microphone.as_json
  end

  def update
    microphone =Microphone.find_by(id: params[:id])
    microphone.update(
      make: params[:input_make],
      model: params[:input_model],
      mictype: params[:input_mictype],
      price: params[:input_price]
      )

    render json: microphone.as_json
  end

  def destroy
    the_id = params[:id]
    microphone = Microphone.find_by(id: the_id)
    microphone.destroy
    render json: {message: "This mic has been deleted"}
  end

end
