class SessionController < ApplicationController
  def post
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        render :json => user, :status => 201
      else
        
        render :json => {:error=>"用户名或密码错误"}, :status => 401
      end
    end
  end

  def get
    user = User.find_by_user_id(session[:user_id])
    render :json => user
  end

  def delete
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "post" )
  end

end
