class ApplicationController < ActionController::API

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, "mysecret")
  end

  def get_auth_headers
    request.headers["Authorization"]
  end

  def decode_token
    begin
      JWT.decode(get_auth_headers, "mysecret")[0]["user_id"]
    rescue
      nil
    end
  end

  def session_user
    User.find_by(decode_token)
  end
end
