class PerfilusuariosController < ApplicationController
  # GET /perfilusuarios
  # GET /perfilusuarios.json
  def index
        redirect_to buscador_index_url
  end

  # GET /perfilusuarios/1
  # GET /perfilusuarios/1.json
  def show
    @perfilusuario = Perfilusuario.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfilusuario }
    end
  end

  # GET /perfilusuarios/new
  # GET /perfilusuarios/new.json
  def new
    @perfilusuario = Perfilusuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfilusuario }
    end
  end

  # GET /perfilusuarios/1/edit
  def edit
    if current_user
    @perfilusuario = Perfilusuario.find(params[:id])
    @perfile.direccionusuario.build(:id => params[:id])
    else
      redirect_to buscador_index_url
    end
  end

  # POST /perfilusuarios
  # POST /perfilusuarios.json
  def create
    @perfilusuario = Perfilusuario.new(params[:perfilusuario])
    @perfilusuario[:id] = current_user.id
    respond_to do |format|
      if @perfilusuario.save
        format.html { redirect_to verPerfil_path, notice: 'Perfilusuario was successfully created.' }
        format.json { render json: @perfilusuario, status: :created, location: @perfilusuario }
      else
        format.html { render action: "new" }
        format.json { render json: @perfilusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfilusuarios/1
  # PUT /perfilusuarios/1.json
  def update
    @perfilusuario = Perfilusuario.find(params[:id])
    respond_to do |format|
      if @perfilusuario.update_attributes(params[:perfilusuario])
        format.html { redirect_to verPerfil_path, notice: 'Perfilusuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfilusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfilusuarios/1
  # DELETE /perfilusuarios/1.json
  def destroy
    @perfilusuario = Perfilusuario.find(params[:id])
    @perfilusuario.destroy
    respond_to do |format|
      format.html { redirect_to perfilusuarios_url }
      format.json { head :no_content }
    end
  end
end
