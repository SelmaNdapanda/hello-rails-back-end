class Api::V1::RandomController < ApplicationController
  def index
    @random_message = Message.random
    render json: @random_message
  end
end
