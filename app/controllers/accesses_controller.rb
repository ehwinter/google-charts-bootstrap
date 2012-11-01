class AccessesController < ApplicationController
  # GET /accesses
  # GET /accesses.json
  def index
    @accesses = Access.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accesses }
    end
  end

  # GET /accesses/1
  # GET /accesses/1.json
  def show
    @access = Access.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @access }
    end
  end

  # GET /accesses/new
  # GET /accesses/new.json
  def new
    @access = Access.new
    
    unless current_user.nil?
      redirect_to root_url, notice: "User already signed in."
    else
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @access }
      end
    end
  end

  # GET /accesses/1/edit
  def edit
    unless current_user.nil?
      if current_user.has_role? :admin
        @access = Access.find(params[:id])
      else
      
        @access = current_user.access
      end
    else
      redirect_to new_access_url, notice: "Please sign in with your access code"
    end

  end

  # actually a lookup.
  def create
    input = Access.new(params[:access])
    puts "params" + params.to_yaml
    puts "input.code" + input.code
    @access = Access.find_by_code(input.code)
    puts @access.to_yaml
    if !@access.nil?
      
    end
    respond_to do |format|
      unless @access.nil?
        # valid code
        if @access.user.nil?
          puts "no user for this access object. Shouldn't happen"
          format.html { redirect_to root_url, notice: "No user for this access object."}
        else
          #sign in success
          user = @access.user
          puts user.to_yaml
          sign_in(user)
          puts "user signed in"
          puts @access.to_yaml
          if ((@access.username.nil? || @access.username.size == 0) || (@access.location.nil? || @access.location.size == 0) ) #need ancillary
            @access.username = @access.user.name.split[0]
            reg = TransportCanadaRegistration.find_by_accesscode(@access.code)
            @access.location = reg.city if (!reg.nil? && reg.city.size > 0)
            @access.save
            format.html { redirect_to edit_access_url(@access), notice: "Please add a username and location"}
          else
            format.html { redirect_to root_url, notice: "Signed in via access code #{@access.code} for #{@access.user.name}." }
            format.json { render json: @access, status: :created, location: @access }
          end
          
        end

      else
        #invalid code
        @access = Access.new
        flash[:error] = 'Invalid access code.'
        format.html { redirect_to new_access_url }

      end
    end
  end

  # PUT /accesses/1
  # PUT /accesses/1.json
  def update
    @access = Access.find(params[:id])

    respond_to do |format|
      if @access.update_attributes(params[:access])
        format.html { redirect_to root_url, notice: 'Access was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesses/1
  # DELETE /accesses/1.json
  def destroy
    @access = Access.find(params[:id])
    @access.destroy

    respond_to do |format|
      format.html { redirect_to accesses_url }
      format.json { head :no_content }
    end
  end
end
