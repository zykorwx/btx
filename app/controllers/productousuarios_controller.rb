class ProductousuariosController < ApplicationController
  # GET /productousuarios
  # GET /productousuarios.json
  def index
    @productousuarios = Productousuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productousuarios }
    end
  end

  # GET /productousuarios/1
  # GET /productousuarios/1.json
  def show
    @productousuario = Productousuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productousuario }
    end
  end

  # GET /productousuarios/new
  # GET /productousuarios/new.json
  def new
    @productousuario = Productousuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productousuario }
    end
  end

  # GET /productousuarios/1/edit
  def edit
    @productousuario = Productousuario.find(params[:id])
  end

  # POST /productousuarios
  # POST /productousuarios.json
  def create
    @productousuario = Productousuario.new(params[:productousuario])

    respond_to do |format|
      if @productousuario.save
        format.html { redirect_to @productousuario, notice: 'Productousuario was successfully created.' }
        format.json { render json: @productousuario, status: :created, location: @productousuario }
      else
        format.html { render action: "new" }
        format.json { render json: @productousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productousuarios/1
  # PUT /productousuarios/1.json
  def update
    @productousuario = Productousuario.find(params[:id])

    respond_to do |format|
      if @productousuario.update_attributes(params[:productousuario])
        format.html { redirect_to @productousuario, notice: 'Productousuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @productousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productousuarios/1
  # DELETE /productousuarios/1.json
  def destroy
    @productousuario = Productousuario.find(params[:id])
    @productousuario.destroy

    respond_to do |format|
      format.html { redirect_to productousuarios_url }
      format.json { head :no_content }
    end
  end
end
