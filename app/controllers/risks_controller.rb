class RisksController < ApplicationController
    
  def matrix
    @periods = Period.all
  end
  
  
   def register
      @risks = Risk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
   end

   def impact
     puts "-"*50
    puts params[:risk]
    #@risk = Risk.find params[:id]
    @period = Period.find params[:period_id]
    
    ids = params[:answers]
    impacts = params[:impacts]
    
    Impact.all.each do |x|
      id = ids.shift.to_i
      imp =impacts.shift.to_i
      Answer.create(period_id: @period.id,
                    impact_id: Impact.find(imp).id,
                    answer_type_id: AnswerType.find(id).id,
                    value: AnswerType.find(id).value
        )
            
    end
    respond_to do |format|
      format.html { redirect_to action: "index", notice: 'Impact successfully Created.' }
      format.json { head :no_content }
    end
       
   end
  
  # GET /risks
  # GET /risks.json
  def index
    
     @risks = Risk.search(params[:search_term],
                         params[:selected_type],
                         params[:selected_location])
      .paginate(:page => params[:page])
    @risk = Risk.new
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risks }
    end
  end

  # GET /risks/1
  # GET /risks/1.json
  def show
    @risk = Risk.find(params[:id])
     
    @periods = Period.where(:risk_id => @risk.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risk }
    end
  end

  # GET /risks/new
  # GET /risks/new.json
  def new
    @risk = Risk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risk }
    end
  end

  # GET /risks/1/edit
  def edit
    @risk = Risk.find(params[:id])
  end

  # POST /risks
  # POST /risks.json
  def create
    
    @risk = Risk.new(params[:risk])
    puts "-"*20
    puts params[:risk]
    respond_to do |format|
    if @risk.save
        format.html { redirect_to @risk, notice: 'Risk was successfully created.' }
        format.json { render json: @risk, status: :created, location: @risk }
      else
        format.html { render action: "new" }
        format.json { render json: @risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risks/1
  # PUT /risks/1.json
  def update
    @risk = Risk.find(params[:id])

    respond_to do |format|
      if @risk.update_attributes(params[:risk])
        format.html { redirect_to @risk, notice: 'Risk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risks/1
  # DELETE /risks/1.json
  def destroy
    @risk = Risk.find(params[:id])
    @risk.destroy

    respond_to do |format|
      format.html { redirect_to risks_url }
      format.json { head :no_content }
    end
  end
  
  
end
