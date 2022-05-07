class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img_url, :description
end
