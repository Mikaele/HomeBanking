class CorrentistaController < ApplicationController
  # GET /correntista
  # GET /correntista.json
  def index
    @correntista = Correntistum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correntista }
    end
  end

  # GET /correntista/1
  # GET /correntista/1.json
  def show
    @correntistum = Correntistum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @correntistum }
    end
  end

  # GET /correntista/new
  # GET /correntista/new.json
  def new
    @correntistum = Correntistum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correntistum }
    end
  end

  # GET /correntista/1/edit
  def edit
    @correntistum = Correntistum.find(params[:id])
  end

  # POST /correntista
  # POST /correntista.json
  def create
    @correntistum = Correntistum.new(params[:correntistum])

    respond_to do |format|
      if @correntistum.save
        format.html { redirect_to @correntistum, notice: 'Correntistum was successfully created.' }
        format.json { render json: @correntistum, status: :created, location: @correntistum }
      else
        format.html { render action: "new" }
        format.json { render json: @correntistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /correntista/1
  # PUT /correntista/1.json
  def update
    @correntistum = Correntistum.find(params[:id])

    respond_to do |format|
      if @correntistum.update_attributes(params[:correntistum])
        format.html { redirect_to @correntistum, notice: 'Correntistum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @correntistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correntista/1
  # DELETE /correntista/1.json
  def destroy
    @correntistum = Correntistum.find(params[:id])
    @correntistum.destroy

    respond_to do |format|
      format.html { redirect_to correntista_url }
      format.json { head :no_content }
    end
  end
end
