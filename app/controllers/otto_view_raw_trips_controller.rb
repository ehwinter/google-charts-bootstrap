class OttoViewRawTripsController < ApplicationController
  # GET /otto_view_raw_trips
  # GET /otto_view_raw_trips.json
  def index
    @otto_view_raw_trips = OttoViewRawTrip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @otto_view_raw_trips }
    end
  end

  # GET /otto_view_raw_trips/1
  # GET /otto_view_raw_trips/1.json
  def show
    @otto_view_raw_trip = OttoViewRawTrip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @otto_view_raw_trip }
    end
  end

  # GET /otto_view_raw_trips/new
  # GET /otto_view_raw_trips/new.json
  def new
    @otto_view_raw_trip = OttoViewRawTrip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @otto_view_raw_trip }
    end
  end

  # GET /otto_view_raw_trips/1/edit
  def edit
    @otto_view_raw_trip = OttoViewRawTrip.find(params[:id])
  end

  # POST /otto_view_raw_trips
  # POST /otto_view_raw_trips.json
  def create
    @otto_view_raw_trip = OttoViewRawTrip.new(params[:otto_view_raw_trip])

    respond_to do |format|
      if @otto_view_raw_trip.save
        format.html { redirect_to @otto_view_raw_trip, notice: 'Otto view raw trip was successfully created.' }
        format.json { render json: @otto_view_raw_trip, status: :created, location: @otto_view_raw_trip }
      else
        format.html { render action: "new" }
        format.json { render json: @otto_view_raw_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /otto_view_raw_trips/1
  # PUT /otto_view_raw_trips/1.json
  def update
    @otto_view_raw_trip = OttoViewRawTrip.find(params[:id])

    respond_to do |format|
      if @otto_view_raw_trip.update_attributes(params[:otto_view_raw_trip])
        format.html { redirect_to @otto_view_raw_trip, notice: 'Otto view raw trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @otto_view_raw_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otto_view_raw_trips/1
  # DELETE /otto_view_raw_trips/1.json
  def destroy
    @otto_view_raw_trip = OttoViewRawTrip.find(params[:id])
    @otto_view_raw_trip.destroy

    respond_to do |format|
      format.html { redirect_to otto_view_raw_trips_url }
      format.json { head :no_content }
    end
  end
end
