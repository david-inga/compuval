class MovimientoCajasController < ApplicationController
  # GET /movimiento_cajas
  # GET /movimiento_cajas.json
  def index
    @movimiento_cajas = MovimientoCaja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movimiento_cajas }
    end
  end

  # GET /movimiento_cajas/1
  # GET /movimiento_cajas/1.json
  def show
    @movimiento_caja = MovimientoCaja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movimiento_caja }
    end
  end

  # GET /movimiento_cajas/new
  # GET /movimiento_cajas/new.json
  def new
    @movimiento_caja = MovimientoCaja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movimiento_caja }
    end
  end

  # GET /movimiento_cajas/1/edit
  def edit
    @movimiento_caja = MovimientoCaja.find(params[:id])
  end

  # POST /movimiento_cajas
  # POST /movimiento_cajas.json
  def create
    @movimiento_caja = MovimientoCaja.new(params[:movimiento_caja])

    respond_to do |format|
      if @movimiento_caja.save
        format.html { redirect_to @movimiento_caja, notice: 'Movimiento caja was successfully created.' }
        format.json { render json: @movimiento_caja, status: :created, location: @movimiento_caja }
      else
        format.html { render action: "new" }
        format.json { render json: @movimiento_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movimiento_cajas/1
  # PUT /movimiento_cajas/1.json
  def update
    @movimiento_caja = MovimientoCaja.find(params[:id])

    respond_to do |format|
      if @movimiento_caja.update_attributes(params[:movimiento_caja])
        format.html { redirect_to @movimiento_caja, notice: 'Movimiento caja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movimiento_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_cajas/1
  # DELETE /movimiento_cajas/1.json
  def destroy
    @movimiento_caja = MovimientoCaja.find(params[:id])
    @movimiento_caja.destroy

    respond_to do |format|
      format.html { redirect_to movimiento_cajas_url }
      format.json { head :no_content }
    end
  end
end
