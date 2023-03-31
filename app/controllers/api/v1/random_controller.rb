class Api::V1::RandomController < ApplicationController
  def index
    random_message = Message.order('Random()').first
    if random_message
      render json: random_message
    else
      render json: { random_message: 'There is no random message' }
    end
  end
end
