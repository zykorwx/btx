class TelefonousuariosController < ApplicationController
  # GET /telefonousuarios
  # GET /telefonousuarios.json
  def index
    @telefonousuarios = Telefonousuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @telefonousuarios }
    end
  end

  # GET /telefonousuarios/1
  # GET /telefonousuarios/1.json
  def show
    @telefonousuario = Telefonousuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @telefonousuario }
    end
  end

  # GET /telefonousuarios/new
  # GET /telefonousuarios/new.json
  def new
    @telefonousuario = Telefonousuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @telefonousuario }
    end
  end

  # GET /telefonousuarios/1/edit
  def edit
    @telefonousuario = Telefonousuario.find(params[:id])
  end

  # POST /telefonousuarios
  # POST /telefonousuarios.json
  def create
    @telefonousuario = Telefonousuario.new(params[:telefonousuario])

    respond_to do |format|
      if @telefonousuario.save
        format.html { redirect_to verPerfil_path(:id => current_user.id), notice: 'Telefonousuario was successfully created.' }
        format.json { render json: @telefonousuario, status: :created, location: @telefonousuario }
      else
        format.html { render action: "new" }
        format.json { render json: @telefonousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /telefonousuarios/1
  # PUT /telefonousuarios/1.json
  def update
    @telefonousuario = Telefonousuario.find(params[:id])

    respond_to do |format|
      if @telefonousuario.update_attributes(params[:telefonousuario])
        format.html { redirect_to verPerfil_path(:id => current_user.id), notice: 'Telefonousuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @telefonousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefonousuarios/1
  # DELETE /telefonousuarios/1.json
  def destroy
    @telefonousuario = Telefonousuario.find(params[:id])
    @telefonousuario.destroy

    respond_to do |format|
      format.html { redirect_to verPerfil_path(:id => current_user.id) }
      format.json { head :no_content }
    end
  end
end
