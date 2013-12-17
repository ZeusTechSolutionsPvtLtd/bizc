class Step1sController < ApplicationController
  # GET /step1s
  # GET /step1s.json
  def index
    @step1s = Step1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @step1s }
    end
  end

  # GET /step1s/1
  # GET /step1s/1.json
  def show
    @step1 = Step1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step1 }
    end
  end

  # GET /step1s/new
  # GET /step1s/new.json
  def new
    @step1 = Step1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step1 }
    end
  end

  # GET /step1s/1/edit
  def edit
    @step1 = Step1.find(params[:id])
  end

  # POST /step1s
  # POST /step1s.json
  def create
    @step1 = Step1.new(params[:step1])

    respond_to do |format|
      if @step1.save
        format.html { redirect_to @step1, notice: 'Step1 was successfully created.' }
        format.json { render json: @step1, status: :created, location: @step1 }
      else
        format.html { render action: "new" }
        format.json { render json: @step1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /step1s/1
  # PUT /step1s/1.json
  def update
    @step1 = Step1.find(params[:id])

    respond_to do |format|
      if @step1.update_attributes(params[:step1])
        format.html { redirect_to @step1, notice: 'Step1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @step1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step1s/1
  # DELETE /step1s/1.json
  def destroy
    @step1 = Step1.find(params[:id])
    @step1.destroy

    respond_to do |format|
      format.html { redirect_to step1s_url }
      format.json { head :ok }
    end
  end
end
