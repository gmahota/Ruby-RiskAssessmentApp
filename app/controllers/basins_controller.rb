class BasinsController < ApplicationController
  # GET /basins
  # GET /basins.json
  def index
    @basins = Basin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @basins }
    end
  end

  # GET /basins/1
  # GET /basins/1.json
  def show
    @basin = Basin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @basin }
    end
  end

  # GET /basins/new
  # GET /basins/new.json
  def new
    @basin = Basin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @basin }
    end
  end

  # GET /basins/1/edit
  def edit
    @basin = Basin.find(params[:id])
  end

  # POST /basins
  # POST /basins.json
  def create
    @basin = Basin.new(params[:basin])

    respond_to do |format|
      if @basin.save
        format.html { redirect_to @basin, notice: 'Basin was successfully created.' }
        format.json { render json: @basin, status: :created, location: @basin }
      else
        format.html { render action: "new" }
        format.json { render json: @basin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /basins/1
  # PUT /basins/1.json
  def update
    @basin = Basin.find(params[:id])

    respond_to do |format|
      if @basin.update_attributes(params[:basin])
        format.html { redirect_to @basin, notice: 'Basin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @basin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basins/1
  # DELETE /basins/1.json
  def destroy
    @basin = Basin.find(params[:id])
    @basin.destroy

    respond_to do |format|
      format.html { redirect_to basins_url }
      format.json { head :no_content }
    end
  end
end
