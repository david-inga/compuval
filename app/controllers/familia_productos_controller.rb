class FamiliaProductosController < ApplicationController
  # GET /familia_productos
  # GET /familia_productos.json
  def index
    @familia_productos = FamiliaProducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @familia_productos }
    end
  end

  # GET /familia_productos/1
  # GET /familia_productos/1.json
  def show
    @familia_producto = FamiliaProducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @familia_producto }
    end
  end

  # GET /familia_productos/new
  # GET /familia_productos/new.json
  def new
    @familia_producto = FamiliaProducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @familia_producto }
    end
  end

  # GET /familia_productos/1/edit
  def edit
    @familia_producto = FamiliaProducto.find(params[:id])
  end

  # POST /familia_productos
  # POST /familia_productos.json
  def create
    @familia_producto = FamiliaProducto.new(params[:familia_producto])

    respond_to do |format|
      if @familia_producto.save
        format.html { redirect_to @familia_producto, notice: 'Familia producto was successfully created.' }
        format.json { render json: @familia_producto, status: :created, location: @familia_producto }
      else
        format.html { render action: "new" }
        format.json { render json: @familia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /familia_productos/1
  # PUT /familia_productos/1.json
  def update
    @familia_producto = FamiliaProducto.find(params[:id])

    respond_to do |format|
      if @familia_producto.update_attributes(params[:familia_producto])
        format.html { redirect_to @familia_producto, notice: 'Familia producto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @familia_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familia_productos/1
  # DELETE /familia_productos/1.json
  def destroy
    @familia_producto = FamiliaProducto.find(params[:id])
    @familia_producto.destroy

    respond_to do |format|
      format.html { redirect_to familia_productos_url }
      format.json { head :no_content }
    end
  end
end
