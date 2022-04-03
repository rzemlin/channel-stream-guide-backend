class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :genre_id, :genre
end
