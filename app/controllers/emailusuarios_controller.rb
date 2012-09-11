class EmailusuariosController < ApplicationController
  # GET /emailusuarios
  # GET /emailusuarios.json
  def index
    @emailusuarios = Emailusuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emailusuarios }
    end
  end

  # GET /emailusuarios/1
  # GET /emailusuarios/1.json
  def show
    @emailusuario = Emailusuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emailusuario }
    end
  end

  # GET /emailusuarios/new
  # GET /emailusuarios/new.json
  def new
    @emailusuario = Emailusuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emailusuario }
    end
  end

  # GET /emailusuarios/1/edit
  def edit
    @emailusuario = Emailusuario.find(params[:id])
  end

  # POST /emailusuarios
  # POST /emailusuarios.json
  def create
    @emailusuario = Emailusuario.new(params[:emailusuario])

    respond_to do |format|
      if @emailusuario.save
        format.html { redirect_to verPerfil_path(:id => current_user.id), notice: 'El email se ha agregado correctamente.' }
        format.json { render json: @emailusuario, status: :created, location: @emailusuario }
      else
        format.html { render action: "new" }
        format.json { render json: @emailusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emailusuarios/1
  # PUT /emailusuarios/1.json
  def update
    @emailusuario = Emailusuario.find(params[:id])

    respond_to do |format|
      if @emailusuario.update_attributes(params[:emailusuario])
        format.html { redirect_to verPerfil_path(:id => current_user.id), notice: 'El email se ha actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emailusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emailusuarios/1
  # DELETE /emailusuarios/1.json
  def destroy
    @emailusuario = Emailusuario.find(params[:id])
    @emailusuario.destroy

    respond_to do |format|
      format.html { redirect_to verPerfil_path(:id => current_user.id) }
      format.json { head :no_content }
    end
  end
end
