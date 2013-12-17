class Step2sController < ApplicationController
  # GET /step2s
  # GET /step2s.json
  def index
    @step2s = Step2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @step2s }
    end
  end

  # GET /step2s/1
  # GET /step2s/1.json
  def show
    @step2 = Step2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step2 }
    end
  end

  # GET /step2s/new
  # GET /step2s/new.json
  def new
    @step2 = Step2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step2 }
    end
  end

  # GET /step2s/1/edit
  def edit
    @step2 = Step2.find(params[:id])
  end

  # POST /step2s
  # POST /step2s.json
  def create
    @step2 = Step2.new(params[:step2])

    respond_to do |format|
      if @step2.save
        format.html { redirect_to @step2, notice: 'Step2 was successfully created.' }
        format.json { render json: @step2, status: :created, location: @step2 }
      else
        format.html { render action: "new" }
        format.json { render json: @step2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /step2s/1
  # PUT /step2s/1.json
  def update
    @step2 = Step2.find(params[:id])

    respond_to do |format|
      if @step2.update_attributes(params[:step2])
        format.html { redirect_to @step2, notice: 'Step2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @step2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step2s/1
  # DELETE /step2s/1.json
  def destroy
    @step2 = Step2.find(params[:id])
    @step2.destroy

    respond_to do |format|
      format.html { redirect_to step2s_url }
      format.json { head :ok }
    end
  end
end
