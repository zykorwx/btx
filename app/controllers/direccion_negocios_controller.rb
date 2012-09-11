class DireccionNegociosController < ApplicationController
  # GET /direccion_negocios
  # GET /direccion_negocios.json
  def index
    @direccion_negocios = DireccionNegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @direccion_negocios }
    end
  end

  # GET /direccion_negocios/1
  # GET /direccion_negocios/1.json
  def show
    @direccion_negocio = DireccionNegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @direccion_negocio }
    end
  end

  # GET /direccion_negocios/new
  # GET /direccion_negocios/new.json
  def new
    @direccion_negocio = DireccionNegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @direccion_negocio }
    end
  end

  # GET /direccion_negocios/1/edit
  def edit
    @direccion_negocio = DireccionNegocio.find(params[:id])
  end

  # POST /direccion_negocios
  # POST /direccion_negocios.json
  def create
    @direccion_negocio = DireccionNegocio.new(params[:direccion_negocio])

    respond_to do |format|
      if @direccion_negocio.save
        format.html { redirect_to @direccion_negocio, notice: 'Direccion negocio was successfully created.' }
        format.json { render json: @direccion_negocio, status: :created, location: @direccion_negocio }
      else
        format.html { render action: "new" }
        format.json { render json: @direccion_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /direccion_negocios/1
  # PUT /direccion_negocios/1.json
  def update
    @direccion_negocio = DireccionNegocio.find(params[:id])

    respond_to do |format|
      if @direccion_negocio.update_attributes(params[:direccion_negocio])
        format.html { redirect_to @direccion_negocio, notice: 'Direccion negocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @direccion_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /direccion_negocios/1
  # DELETE /direccion_negocios/1.json
  def destroy
    @direccion_negocio = DireccionNegocio.find(params[:id])
    @direccion_negocio.destroy

    respond_to do |format|
      format.html { redirect_to direccion_negocios_url }
      format.json { head :no_content }
    end
  end
end
