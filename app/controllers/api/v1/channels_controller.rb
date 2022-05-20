class Api::V1::ChannelsController < ApplicationController
  skip_before_action :authorized, only: [:delete, :edit, :create, :index]

  def index
    channels = Channel.all
    #render json: @channels
    render json: ChannelSerializer.new(channels)
  end

  def create
    channel = Channel.new(channel_params)
    if channel.save
      render json: ChannelSerializer.new(channel), status: :accepted
    else
      render json: { errors: channel.errors.full_messages }, status: :somethings_wrong
    end
  end

  def edit
    channel = Channel.find_by(id: params[:id])
    if channel.update(channel_params)
      render json: ChannelSerializer.new(channel), status: :accepted
    else
      render json: { errors: kdrama.errors.full_messages }
    end
  end

  def delete
    channel = Channel.find_by(id: params[:id])
    if channel.destroy
      render json: { id: channel.id }
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:name, :description, :img_url, :genre_id, :service_id)
  end
end
