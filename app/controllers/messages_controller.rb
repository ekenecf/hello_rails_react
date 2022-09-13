class MessagesController < ApplicationController
  def index
    id = rand(1..Message.count)
    if id.nil?
      render json: { error: 'sorry! not found' }.to_json, status: 404
    else
      @message = Message.find(id)
      render json: @message
      puts @message.greeting
    end
  end
end
