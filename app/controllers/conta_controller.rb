class ContaController < ApplicationController
  # GET /conta
  # GET /conta.json
  def index
    @conta = Conta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conta }
    end
  end

  # GET /conta/1
  # GET /conta/1.json
  def show
    @conta = Conta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conta }
    end
  end

  # GET /conta/new
  # GET /conta/new.json
  def new
    @conta = Conta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conta }
    end
  end

  # GET /conta/1/edit
  def edit
    @conta = Conta.find(params[:id])
  end

  # POST /conta
  # POST /conta.json
  def create
    @conta = Conta.new(params[:conta])

    respond_to do |format|
      if @conta.save
        format.html { redirect_to @conta, notice: 'Conta was successfully created.' }
        format.json { render json: @conta, status: :created, location: @conta }
      else
        format.html { render action: "new" }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conta/1
  # PUT /conta/1.json
  def update
    @conta = Conta.find(params[:id])

    respond_to do |format|
      if @conta.update_attributes(params[:conta])
        format.html { redirect_to @conta, notice: 'Conta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1
  # DELETE /conta/1.json
  def destroy
    @conta = Conta.find(params[:id])
    @conta.destroy

    respond_to do |format|
      format.html { redirect_to conta_url }
      format.json { head :no_content }
    end
  end
end
