class PerfilnegociosController < ApplicationController
  # GET /perfilnegocios
  # GET /perfilnegocios.json
  def index
    @perfilnegocios = Perfilnegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perfilnegocios }
    end
  end

  # GET /perfilnegocios/1
  # GET /perfilnegocios/1.json
  def show
    @perfilnegocio = Perfilnegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfilnegocio }
    end
  end

  # GET /perfilnegocios/new
  # GET /perfilnegocios/new.json
  def new
    @perfilnegocio = Perfilnegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfilnegocio }
    end
  end

  # GET /perfilnegocios/1/edit
  def edit
    @perfilnegocio = Perfilnegocio.find(params[:id])
  end

  # POST /perfilnegocios
  # POST /perfilnegocios.json
  def create
    @perfilnegocio = Perfilnegocio.new(params[:perfilnegocio])

    respond_to do |format|
      if @perfilnegocio.save
        format.html { redirect_to @perfilnegocio, notice: 'Perfilnegocio was successfully created.' }
        format.json { render json: @perfilnegocio, status: :created, location: @perfilnegocio }
      else
        format.html { render action: "new" }
        format.json { render json: @perfilnegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfilnegocios/1
  # PUT /perfilnegocios/1.json
  def update
    @perfilnegocio = Perfilnegocio.find(params[:id])

    respond_to do |format|
      if @perfilnegocio.update_attributes(params[:perfilnegocio])
        format.html { redirect_to @perfilnegocio, notice: 'Perfilnegocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfilnegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfilnegocios/1
  # DELETE /perfilnegocios/1.json
  def destroy
    @perfilnegocio = Perfilnegocio.find(params[:id])
    @perfilnegocio.destroy

    respond_to do |format|
      format.html { redirect_to perfilnegocios_url }
      format.json { head :no_content }
    end
  end
end
