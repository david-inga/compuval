class CuentaPorPagarsController < ApplicationController
  # GET /cuenta_por_pagars
  # GET /cuenta_por_pagars.json
  def index
    @cuenta_por_pagars = CuentaPorPagar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cuenta_por_pagars }
    end
  end

  # GET /cuenta_por_pagars/1
  # GET /cuenta_por_pagars/1.json
  def show
    @cuenta_por_pagar = CuentaPorPagar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cuenta_por_pagar }
    end
  end

  # GET /cuenta_por_pagars/new
  # GET /cuenta_por_pagars/new.json
  def new
    @cuenta_por_pagar = CuentaPorPagar.new
    @listado_empresas = Empresa.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cuenta_por_pagar }
    end
  end

  # GET /cuenta_por_pagars/1/edit
  def edit
    @cuenta_por_pagar = CuentaPorPagar.find(params[:id])
    @listado_empresas = Empresa.all
  end

  # POST /cuenta_por_pagars
  # POST /cuenta_por_pagars.json
  def create
    @cuenta_por_pagar = CuentaPorPagar.new(params[:cuenta_por_pagar])    
    respond_to do |format|
      if @cuenta_por_pagar.save
        format.html { redirect_to @cuenta_por_pagar, notice: 'Cuenta por pagar was successfully created.' }
        format.json { render json: @cuenta_por_pagar, status: :created, location: @cuenta_por_pagar }
      else
        format.html { render action: "new" }
        format.json { render json: @cuenta_por_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cuenta_por_pagars/1
  # PUT /cuenta_por_pagars/1.json
  def update
    @cuenta_por_pagar = CuentaPorPagar.find(params[:id])

    respond_to do |format|
      if @cuenta_por_pagar.update_attributes(params[:cuenta_por_pagar])
        format.html { redirect_to @cuenta_por_pagar, notice: 'Cuenta por pagar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cuenta_por_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_por_pagars/1
  # DELETE /cuenta_por_pagars/1.json
  def destroy
    @cuenta_por_pagar = CuentaPorPagar.find(params[:id])
    @cuenta_por_pagar.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_por_pagars_url }
      format.json { head :no_content }
    end
  end
end
