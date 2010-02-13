class HomeController < ApplicationController
  
  def index
  end
  
  def login
    if request.post?
      user = User.authenticate(params[:login], params[:password])
      if user 
        session[:user_id] = user.id
        logincounter = user.login_count += 1
        user.update_metadata(:login_count => logincounter ,:current_login_ip => request.remote_ip, :last_login_ip => user.current_login_ip,:current_login_at => Time.now, :last_login_at => user.current_login_at)
        redirect_to :controller => "home" ,:action => "index"
      else      
        flash.now[:notice] = "Invalid user/password combination"
      end 
    end  
  end
  
  def logout
    session[:user_id] = nil
    redirect_to :action => "login"
  end  
end
