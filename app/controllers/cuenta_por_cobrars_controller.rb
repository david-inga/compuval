class CuentaPorCobrarsController < ApplicationController
  # GET /cuenta_por_cobrars
  # GET /cuenta_por_cobrars.json
  def index
    @cuenta_por_cobrars = CuentaPorCobrar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cuenta_por_cobrars }
    end
  end

  # GET /cuenta_por_cobrars/1
  # GET /cuenta_por_cobrars/1.json
  def show
    @cuenta_por_cobrar = CuentaPorCobrar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cuenta_por_cobrar }
    end
  end

  # GET /cuenta_por_cobrars/new
  # GET /cuenta_por_cobrars/new.json
  def new
    @cuenta_por_cobrar = CuentaPorCobrar.new
    @listado_empresas = Empresa.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cuenta_por_cobrar }
    end
  end

  # GET /cuenta_por_cobrars/1/edit
  def edit
    @listado_empresas = Empresa.all
    @cuenta_por_cobrar = CuentaPorCobrar.find(params[:id])
  end

  # POST /cuenta_por_cobrars
  # POST /cuenta_por_cobrars.json
  def create
    @cuenta_por_cobrar = CuentaPorCobrar.new(params[:cuenta_por_cobrar])

    respond_to do |format|
      if @cuenta_por_cobrar.save
        format.html { redirect_to @cuenta_por_cobrar, notice: 'Cuenta por cobrar was successfully created.' }
        format.json { render json: @cuenta_por_cobrar, status: :created, location: @cuenta_por_cobrar }
      else
        format.html { render action: "new" }
        format.json { render json: @cuenta_por_cobrar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cuenta_por_cobrars/1
  # PUT /cuenta_por_cobrars/1.json
  def update
    @cuenta_por_cobrar = CuentaPorCobrar.find(params[:id])

    respond_to do |format|
      if @cuenta_por_cobrar.update_attributes(params[:cuenta_por_cobrar])
        format.html { redirect_to @cuenta_por_cobrar, notice: 'Cuenta por cobrar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cuenta_por_cobrar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_por_cobrars/1
  # DELETE /cuenta_por_cobrars/1.json
  def destroy
    @cuenta_por_cobrar = CuentaPorCobrar.find(params[:id])
    @cuenta_por_cobrar.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_por_cobrars_url }
      format.json { head :no_content }
    end
  end
end
