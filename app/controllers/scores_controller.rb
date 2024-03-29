class ScoresController < ApplicationController
  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.order("score DESC").limit(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @scores }
    end
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
    @score = Score.find(params[:id])

    respond_to do |format|
      format.json { render :json => @score }
    end
  end

  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(params[:score])
    @score.digest = params[:digest]

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score, :notice => 'Score was successfully created.' }
        format.json { render :json => @score, :status => :created, :location => @score }
      else
        format.html { render :action => "new" }
        format.json { render :json => @score.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scores/1
  # PUT /scores/1.json
  def update
    @score = Score.find(params[:id])

    respond_to do |format|
      if @score.update_attributes(params[:score])
        format.json { head :ok }
      else
        format.json { render :json => @score.errors, :status => :unprocessable_entity }
      end
    end
  end
end
