class TransportCanadaRegistrationsController < ApplicationController
  include ActiveModel::MassAssignmentSecurity
  # GET /transport_canada_registrations
  # GET /transport_canada_registrations.json
  def index
    @transport_canada_registrations = TransportCanadaRegistration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transport_canada_registrations }
    end
  end

  # GET /transport_canada_registrations/1
  # GET /transport_canada_registrations/1.json
  def show
    @transport_canada_registration = TransportCanadaRegistration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transport_canada_registration }
    end
  end

  # GET /transport_canada_registrations/new
  # GET /transport_canada_registrations/new.json
  def new
    @transport_canada_registration = TransportCanadaRegistration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transport_canada_registration }
    end
  end

  # GET /transport_canada_registrations/1/edit
  def edit
    @transport_canada_registration = TransportCanadaRegistration.find(params[:id])
  end
  def cull_params
    role = :default
    sanitize_for_mass_assignment(params[:transport_canada_registration], role)
  end
  # POST /transport_canada_registrations
  # POST /transport_canada_registrations.json
  def create
    
    @transport_canada_registration = TransportCanadaRegistration.new(cull_params)

    respond_to do |format|
      if @transport_canada_registration.save
        format.html { redirect_to @transport_canada_registration, notice: 'Transport canada registration was successfully created.' }
        format.json { render json: @transport_canada_registration, status: :created, location: @transport_canada_registration }
      else
        format.html { render action: "new" }
        format.json { render json: @transport_canada_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transport_canada_registrations/1
  # PUT /transport_canada_registrations/1.json
  def update
    @transport_canada_registration = TransportCanadaRegistration.find(params[:id])

    respond_to do |format|
      if @transport_canada_registration.update_attributes(params[:transport_canada_registration])
        format.html { redirect_to @transport_canada_registration, notice: 'Transport canada registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transport_canada_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_canada_registrations/1
  # DELETE /transport_canada_registrations/1.json
  def destroy
    @transport_canada_registration = TransportCanadaRegistration.find(params[:id])
    @transport_canada_registration.destroy

    respond_to do |format|
      format.html { redirect_to transport_canada_registrations_url }
      format.json { head :no_content }
    end
  end

end
