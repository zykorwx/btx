class DireccionusuariosController < ApplicationController
  # GET /direccionusuarios
  # GET /direccionusuarios.json
  def index
    @direccionusuarios = Direccionusuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @direccionusuarios }
    end
  end

  # GET /direccionusuarios/1
  # GET /direccionusuarios/1.json
  def show
    @direccionusuario = Direccionusuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @direccionusuario }
    end
  end

  # GET /direccionusuarios/new
  # GET /direccionusuarios/new.json
  def new
    @direccionusuario = Direccionusuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @direccionusuario }
    end
  end

  # GET /direccionusuarios/1/edit
  def edit
    @direccionusuario = Direccionusuario.find(params[:id])
  end

  # POST /direccionusuarios
  # POST /direccionusuarios.json
  def create
    @direccionusuario = Direccionusuario.new(params[:direccionusuario])

    respond_to do |format|
      if @direccionusuario.save
        format.html { redirect_to @direccionusuario, notice: 'Direccionusuario was successfully created.' }
        format.json { render json: @direccionusuario, status: :created, location: @direccionusuario }
      else
        format.html { render action: "new" }
        format.json { render json: @direccionusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /direccionusuarios/1
  # PUT /direccionusuarios/1.json
  def update
    @direccionusuario = Direccionusuario.find(params[:id])

    respond_to do |format|
      if @direccionusuario.update_attributes(params[:direccionusuario])
        format.html { redirect_to @direccionusuario, notice: 'Direccionusuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @direccionusuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direccionusuarios/1
  # DELETE /direccionusuarios/1.json
  def destroy
    @direccionusuario = Direccionusuario.find(params[:id])
    @direccionusuario.destroy

    respond_to do |format|
      format.html { redirect_to direccionusuarios_url }
      format.json { head :no_content }
    end
  end
end
