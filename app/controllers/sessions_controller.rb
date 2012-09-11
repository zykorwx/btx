class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to index_path
    end
  end

def create
  user = login(params[:email],params[:password], params[:remember_me])
  if user
    redirect_back_or_to root_url
  else
    flash.now.alert = "Email o password son incorrectos"
    render :new
  end
end

def destroy
  logout
  redirect_to root_url, :notice => "Vuelve pronto!"
end
end
