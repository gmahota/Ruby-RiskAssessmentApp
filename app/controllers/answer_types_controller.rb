class AnswerTypesController < ApplicationController
  # GET /answer_types
  # GET /answer_types.json
  def index
    @answer_types = AnswerType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answer_types }
    end
  end

  # GET /answer_types/1
  # GET /answer_types/1.json
  def show
    @answer_type = AnswerType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer_type }
    end
  end

  # GET /answer_types/new
  # GET /answer_types/new.json
  def new
    @answer_type = AnswerType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer_type }
    end
  end

  # GET /answer_types/1/edit
  def edit
    @answer_type = AnswerType.find(params[:id])
  end

  # POST /answer_types
  # POST /answer_types.json
  def create
    @answer_type = AnswerType.new(params[:answer_type])

    respond_to do |format|
      if @answer_type.save
        format.html { redirect_to @answer_type, notice: 'Answer type was successfully created.' }
        format.json { render json: @answer_type, status: :created, location: @answer_type }
      else
        format.html { render action: "new" }
        format.json { render json: @answer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answer_types/1
  # PUT /answer_types/1.json
  def update
    @answer_type = AnswerType.find(params[:id])

    respond_to do |format|
      if @answer_type.update_attributes(params[:answer_type])
        format.html { redirect_to @answer_type, notice: 'Answer type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_types/1
  # DELETE /answer_types/1.json
  def destroy
    @answer_type = AnswerType.find(params[:id])
    @answer_type.destroy

    respond_to do |format|
      format.html { redirect_to answer_types_url }
      format.json { head :no_content }
    end
  end
end
