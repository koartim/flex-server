class Api::V1::AuthController < ApplicationController
  def login
  @user = User.find_by(username: user_login_params[:username])
  if @user && @user.authenticate(user_login_params[:password])

    token = encode_token({ user_id: @user.id })
    render json: { user: UserSerializer.new(@user), jwt: token }
  else
    render json: { message: 'Invalid username or password' }
  end
 end

 def auto_login
   if session_user
     token = encode_token({ user_id: session_user.id })
     render json: {user: session_user, jwt: token}
   else
     render json: {errors: "hands off my cookies"}
   end
 end

private

def user_login_params
  params.require(:user).permit(:username, :password)
  end
end
