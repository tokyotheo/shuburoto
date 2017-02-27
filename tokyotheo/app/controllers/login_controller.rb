class LoginController < ApplicationController
  verify :method => :post,
         :only => [ :login ],
         :redirect_to => { :controller => 'main', :action => 'index' }
  #
  def login
    login_name = params[:login_name]
    password = params[:password]
    user = User.authenticate(login_name, password)
    if user
      session[:user_id] = user.id
      # flash[:worning] = 'ログイン成功'
    else
      session[:user_id] = nil
      flash[:warning] = 'ログイン失敗'
      flash[:login_name] = login_name
    end
    if params[:from]
      redirect_to params[:from]
      #redirect_to :controller => 'lessons', :action => 'index'
      #redirect_to "http://yahoo.co.jp"
      #redirect_to :controler => 'lessons', :action => 'index'
    else
      redirect_to "/"
      #redirect_to :controller => 'main', :action => 'index'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
    # redirect_to :controller => 'main', :action => 'index'
    # redirect_to "http://202.218.237.141:3000/lectures/"
  end
end
