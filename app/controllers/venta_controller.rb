class VentaController < ApplicationController
  # GET /venta
 
  def index
    @venta = Ventum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @venta }
    end
  end

  # GET /venta/1
  # GET /venta/1.json
  def show
    @ventum = Ventum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ventum }
    end
  end

  # GET /venta/new
  # GET /venta/new.json
  def new
    @ventum = Ventum.new
    @listado_empresas = Empresa.all
    @listado_productos = Producto.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ventum }
    end
  end

  # GET /venta/1/edit
  def edit
    @ventum = Ventum.find(params[:id])
    @listado_empresas = Empresa.all
    @listado_productos = Producto.all
  end

  # POST /venta
  # POST /venta.json
  def create
    @ventum = Ventum.new(params[:ventum])
     logger.info(">>>")
      logger.info(params[:ventum][:producto])
    @productos = Producto.where("nombre = ?", params[:ventum][:producto])
    logger.info(@productos)
    logger.info(@productos.first)
    @productos.first.stock = @productos.first.stock - @ventum.cantidad
    @productos.first.save
    respond_to do |format|
      if @ventum.save
        format.html { redirect_to @ventum, notice: 'Ventum was successfully created.' }
        format.json { render json: @ventum, status: :created, location: @ventum }
      else
        format.html { render action: "new" }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /venta/1
  # PUT /venta/1.json
  def update
    @ventum = Ventum.find(params[:id])

    respond_to do |format|
      if @ventum.update_attributes(params[:ventum])
        format.html { redirect_to @ventum, notice: 'Ventum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venta/1
  # DELETE /venta/1.json
  def destroy
    @ventum = Ventum.find(params[:id])
    @ventum.destroy

    respond_to do |format|
      format.html { redirect_to venta_url }
      format.json { head :no_content }
    end
  end
end
