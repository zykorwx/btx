class UsersController < ApplicationController
  
  def new
        if current_user
      redirect_to index_path
    else
    @user = User.new
    end
  end
  
  
  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user, should_remember=false)  # login without credentials, optional remember_me
      redirect_back_or_to root_url, :notice => "Gracias por registrarte " + @user.email
    else
      render :new
    end
   end
   
    def edit
      @user = User.find(current_user.id)
    end
   
     def update
    @user = User.find(current_user.id)
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to verPerfil_path(:id => current_user.id), :notice => "Se ha cambiado tu imagen de perfil" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
   
end
