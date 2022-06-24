class SessionsController < ApplicationController
  def new
    pp 'test'
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = 'ログインに成功しました'
      redirect_to users_url
    else
      render 'new', notice: 'failed'
    end
  end

end
