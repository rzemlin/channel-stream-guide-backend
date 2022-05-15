class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, "secret_value")
  end

  def auth_header
    request.headers["Authorization"]
  end

  def decode_token
    if auth_header
      #split to get the token separate from key: value: pair
      token = auth_header.split(" ")[1]
      begin
        #pass in three args
        JWT.decode(token, "secret_value", true, algorithm: "HS256")
      rescue JWT::DecodeError
        #prevents page from freezing if blank
        nil
      end
    end
  end

  def current_user
    if decode_token
      #[0] gets just the token
      user_id = decode_token[0]["user_id"]
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
    # !! a boolean instead of truthy value
  end

  def authorized
    render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  end
end
