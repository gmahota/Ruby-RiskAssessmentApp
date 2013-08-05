class ProbabilitiesController < ApplicationController
  # GET /probabilities
  # GET /probabilities.json
  def index
    @probabilities = Probability.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @probabilities }
    end
  end

  # GET /probabilities/1
  # GET /probabilities/1.json
  def show
    @probability = Probability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @probability }
    end
  end

  # GET /probabilities/new
  # GET /probabilities/new.json
  def new
    @probability = Probability.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @probability }
    end
  end

  # GET /probabilities/1/edit
  def edit
    @probability = Probability.find(params[:id])
  end

  # POST /probabilities
  # POST /probabilities.json
  def create
    @probability = Probability.new(params[:probability])

    respond_to do |format|
      if @probability.save
        format.html { redirect_to @probability, notice: 'Probability was successfully created.' }
        format.json { render json: @probability, status: :created, location: @probability }
      else
        format.html { render action: "new" }
        format.json { render json: @probability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /probabilities/1
  # PUT /probabilities/1.json
  def update
    @probability = Probability.find(params[:id])

    respond_to do |format|
      if @probability.update_attributes(params[:probability])
        format.html { redirect_to @probability, notice: 'Probability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @probability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /probabilities/1
  # DELETE /probabilities/1.json
  def destroy
    @probability = Probability.find(params[:id])
    @probability.destroy

    respond_to do |format|
      format.html { redirect_to probabilities_url }
      format.json { head :no_content }
    end
  end
end
