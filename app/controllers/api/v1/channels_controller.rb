class Api::V1::ChannelsController < ApplicationController

    def index
        @channels = Channel.all
        render json: @channels

    end

    def create
        channel = Channel.new(channel_params)
        if channel.save
            render json: channel, status: :accepted
        else
            render json: {errors: channel.errors.full_messages}, status: :unprocessible_entity
        end
    end



    private

    def channel_params
        params.require(:channel).permit(:name, :service, :genre_id, :img_url)
    end

end
