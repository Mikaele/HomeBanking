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
    @Conta = Conta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Conta }
    end
  end

  # GET /conta/new
  # GET /conta/new.json
  def new
    @Conta = Conta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Conta }
    end
  end

  # GET /conta/1/edit
  def edit
    @Conta = Conta.find(params[:id])
  end

  # POST /conta
  # POST /conta.json
  def create
    @Conta = Conta.new(params[:Conta])

    respond_to do |format|
      if @Conta.save
        format.html { redirect_to @Conta, notice: 'Conta was successfully created.' }
        format.json { render json: @Conta, status: :created, location: @Conta }
      else
        format.html { render action: "new" }
        format.json { render json: @Conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conta/1
  # PUT /conta/1.json
  def update
    @Conta = Conta.find(params[:id])

    respond_to do |format|
      if @Conta.update_attributes(params[:Conta])
        format.html { redirect_to @Conta, notice: 'Conta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1
  # DELETE /conta/1.json
  def destroy
    @Conta = Conta.find(params[:id])
    @Conta.destroy

    respond_to do |format|
      format.html { redirect_to conta_url }
      format.json { head :no_content }
    end
  end
end
