class ProductonegociosController < ApplicationController
  # GET /productonegocios
  # GET /productonegocios.json
  def index
    @productonegocios = Productonegocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productonegocios }
    end
  end

  # GET /productonegocios/1
  # GET /productonegocios/1.json
  def show
    @productonegocio = Productonegocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productonegocio }
    end
  end

  # GET /productonegocios/new
  # GET /productonegocios/new.json
  def new
    @productonegocio = Productonegocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productonegocio }
    end
  end

  # GET /productonegocios/1/edit
  def edit
    @productonegocio = Productonegocio.find(params[:id])
  end

  # POST /productonegocios
  # POST /productonegocios.json
  def create
    @productonegocio = Productonegocio.new(params[:productonegocio])

    respond_to do |format|
      if @productonegocio.save
        format.html { redirect_to @productonegocio, notice: 'Productonegocio was successfully created.' }
        format.json { render json: @productonegocio, status: :created, location: @productonegocio }
      else
        format.html { render action: "new" }
        format.json { render json: @productonegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productonegocios/1
  # PUT /productonegocios/1.json
  def update
    @productonegocio = Productonegocio.find(params[:id])

    respond_to do |format|
      if @productonegocio.update_attributes(params[:productonegocio])
        format.html { redirect_to @productonegocio, notice: 'Productonegocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productonegocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productonegocios/1
  # DELETE /productonegocios/1.json
  def destroy
    @productonegocio = Productonegocio.find(params[:id])
    @productonegocio.destroy

    respond_to do |format|
      format.html { redirect_to productonegocios_url }
      format.json { head :no_content }
    end
  end
end
