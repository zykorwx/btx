class PerfilesController < ApplicationController
  # GET /perfiles
  # GET /perfiles.json
  
  def index

  end

  # GET /perfiles/1
  # GET /perfiles/1.json
  def show
        if Perfilusuario.where(:id => current_user.id).exists?
          @valor = 1
    @telefonos = Telefonousuario.where(:idUser => current_user.id).order("tipo")
    @emails = Emailusuario.where(:idUser => current_user.id)
    @perfilusuarios = Perfilusuario.find(current_user.id)
    @user = User.find(current_user.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfilusuarios }
      format.json { render json: @telefonos }
      format.json { render json: @emails }
      format.json { render json: @user }
     
    end
    else
      @valor = 0
    end
    

  end

  # GET /perfiles/new
  # GET /perfiles/new.json
  def new
    @perfile = Perfilusuario.new
    @perfile.build_direccionusuario
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfile }
    end
  end

  # GET /perfiles/1/edit
  def edit
          @perfile = Perfilusuario.find(params[:id])
    if Direccionusuario.where(:id => params[:id]).exists?

    else
      @perfile = Perfilusuario.find(params[:id])
      @perfile.build_direccionusuario
    end
  end
  
  # POST /perfiles
  # POST /perfiles.json
  def create
    @perfile = Perfile.new(params[:perfile])
    @perfile.build_direccionusuario(params[:perfile])
    respond_to do |format|
      if @perfile.save
        format.html { redirect_to @perfile, notice: 'Perfile was successfully created.' }
        format.json { render json: @perfile, status: :created, location: @perfile }
      else
        format.html { render action: "new" }
        format.json { render json: @perfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfiles/1
  # PUT /perfiles/1.json
  def update
    @perfile = Perfile.find(params[:id])
    @perfile.direccionusuario_attributes.where(:id => current_user.id)
    respond_to do |format|
      if @perfile.perfileusuarios_attributes(params[:perfile]) and @perfile.direccionusuario.direccionusuario_attributes(params[:perfilusuario])
        format.html { redirect_to @perfile, notice: 'Perfile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfiles/1
  # DELETE /perfiles/1.json
  def destroy
    @perfile = Perfile.find(params[:id])
    @perfile.destroy

    respond_to do |format|
      format.html { redirect_to perfiles_url }
      format.json { head :no_content }
    end
  end
end
