class TelefononegociosController < ApplicationController
  # GET /telefononegocios
  # GET /telefononegocios.json
  def index
    @telefononegocios = Telefononegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @telefononegocios }
    end
  end

  # GET /telefononegocios/1
  # GET /telefononegocios/1.json
  def show
    @telefononegocio = Telefononegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @telefononegocio }
    end
  end

  # GET /telefononegocios/new
  # GET /telefononegocios/new.json
  def new
    @telefononegocio = Telefononegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @telefononegocio }
    end
  end

  # GET /telefononegocios/1/edit
  def edit
    @telefononegocio = Telefononegocio.find(params[:id])
  end

  # POST /telefononegocios
  # POST /telefononegocios.json
  def create
    @telefononegocio = Telefononegocio.new(params[:telefononegocio])

    respond_to do |format|
      if @telefononegocio.save
        format.html { redirect_to @telefononegocio, notice: 'Telefononegocio was successfully created.' }
        format.json { render json: @telefononegocio, status: :created, location: @telefononegocio }
      else
        format.html { render action: "new" }
        format.json { render json: @telefononegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /telefononegocios/1
  # PUT /telefononegocios/1.json
  def update
    @telefononegocio = Telefononegocio.find(params[:id])

    respond_to do |format|
      if @telefononegocio.update_attributes(params[:telefononegocio])
        format.html { redirect_to @telefononegocio, notice: 'Telefononegocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @telefononegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefononegocios/1
  # DELETE /telefononegocios/1.json
  def destroy
    @telefononegocio = Telefononegocio.find(params[:id])
    @telefononegocio.destroy

    respond_to do |format|
      format.html { redirect_to telefononegocios_url }
      format.json { head :no_content }
    end
  end
end
