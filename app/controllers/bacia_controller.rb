class BaciaController < ApplicationController
  # GET /bacia
  # GET /bacia.json
  def index
    @bacia = Bacium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bacia }
    end
  end

  # GET /bacia/1
  # GET /bacia/1.json
  def show
    @bacium = Bacium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bacium }
    end
  end

  # GET /bacia/new
  # GET /bacia/new.json
  def new
    @bacium = Bacium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bacium }
    end
  end

  # GET /bacia/1/edit
  def edit
    @bacium = Bacium.find(params[:id])
  end

  # POST /bacia
  # POST /bacia.json
  def create
    @bacium = Bacium.new(params[:bacium])

    respond_to do |format|
      if @bacium.save
        format.html { redirect_to @bacium, notice: 'Bacium was successfully created.' }
        format.json { render json: @bacium, status: :created, location: @bacium }
      else
        format.html { render action: "new" }
        format.json { render json: @bacium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bacia/1
  # PUT /bacia/1.json
  def update
    @bacium = Bacium.find(params[:id])

    respond_to do |format|
      if @bacium.update_attributes(params[:bacium])
        format.html { redirect_to @bacium, notice: 'Bacium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bacium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bacia/1
  # DELETE /bacia/1.json
  def destroy
    @bacium = Bacium.find(params[:id])
    @bacium.destroy

    respond_to do |format|
      format.html { redirect_to bacia_url }
      format.json { head :no_content }
    end
  end
end
