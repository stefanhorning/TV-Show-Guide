class ShowsController < ApplicationController
  load_and_authorize_resource
  
  # GET /shows
  # GET /shows.json
  def index
   # @shows = Show.search(params[:search])       #search
     @shows = Show.search params[:search],  :star => true
  end

  # GET /shows/1
  # GET /shows/1.json
  def show
    @show = Show.find(params[:id])
    @seasons = @show.seasons # get seasons of this show
    @episodes = @show.episodes # get episodes of this show (through seasons)
    @episodes = @episodes.sort_by(&:date).reverse    # sort by date for now. TODO: Should be sorted by Season and Episode numbers
    # @subscribes = @show.subscribes # if we want to use subscribes template instead of users
    @users = @show.users # if we want to use users template
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @show }
    end
  end

  # GET /shows/new
  # GET /shows/new.json
  def new
    @show = Show.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @show }
    end
  end

  # GET /shows/1/edit
  def edit
    @show = Show.find(params[:id])
  end

  # POST /shows
  # POST /shows.json
  def create
    @show = Show.new(params[:show])

    respond_to do |format|
      if @show.save
        format.html { redirect_to @show, notice: 'Show was successfully created.' }
        format.json { render json: @show, status: :created, location: @show }
      else
        format.html { render action: "new" }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shows/1
  # PUT /shows/1.json
  def update
    @show = Show.find(params[:id])

    respond_to do |format|
      if @show.update_attributes(params[:show])
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    @show = Show.find(params[:id])
    @show.destroy

    respond_to do |format|
      format.html { redirect_to shows_url }
      format.json { head :ok }
    end
  end
end
