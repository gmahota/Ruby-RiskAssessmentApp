class DamsController < ApplicationController
  # GET /dams
  # GET /dams.json
  def index
    @dams = Dam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dams }
    end
  end

  # GET /dams/1
  # GET /dams/1.json
  def show
    @dam = Dam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dam }
    end
  end

  # GET /dams/new
  # GET /dams/new.json
  def new
    @dam = Dam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dam }
    end
  end

  # GET /dams/1/edit
  def edit
    @dam = Dam.find(params[:id])
  end

  # POST /dams
  # POST /dams.json
  def create
    @dam = Dam.new(params[:dam])

    respond_to do |format|
      if @dam.save
        format.html { redirect_to @dam, notice: 'Dam was successfully created.' }
        format.json { render json: @dam, status: :created, location: @dam }
      else
        format.html { render action: "new" }
        format.json { render json: @dam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dams/1
  # PUT /dams/1.json
  def update
    @dam = Dam.find(params[:id])

    respond_to do |format|
      if @dam.update_attributes(params[:dam])
        format.html { redirect_to @dam, notice: 'Dam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dams/1
  # DELETE /dams/1.json
  def destroy
    @dam = Dam.find(params[:id])
    @dam.destroy

    respond_to do |format|
      format.html { redirect_to dams_url }
      format.json { head :no_content }
    end
  end
end
