class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :img_url, :genre_id, :genre, :service_id
end
