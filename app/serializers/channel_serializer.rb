class ChannelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :img_url, :genre
end
