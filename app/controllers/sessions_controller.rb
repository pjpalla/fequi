class SessionsController < ApplicationController
  # layout "sessions", :only => [:new, :create]
  #layout false
  skip_before_filter :authorize
  
  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	Log.debug "****user email #{user.email}"
  	if user
  		session[:user_id] = user.id
  		redirect_to :users, :notice => "Logged in"
  	else
  		flash.now.alert= "Invalid email or password"
  		render "new"	
  	end
  end


  def destroy
  	session[:user_id] = nil
  	redirect_to :root, :notice => "Logged Out"
  end 	




end
