class PerformanceRequestsController < ApplicationController
  before_filter :authenticate_admin!, except: [:new, :create]
  # GET /performance_requests
  # GET /performance_requests.json
  helper_method :sort_column, :sort_direction

  def sort_column
    params[:sort] || "status"
  end

  def sort_direction
    params[:direction] || "asc"
  end

  def index
    @performance_requests = PerformanceRequest.order([sort_column, sort_direction].join(" "))

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @performance_requests }
    end
  end
  # GET /performance_requests/1
  # GET /performance_requests/1.json
  def show
    @performance_request = PerformanceRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @performance_request }
    end
  end

  # GET /performance_requests/new
  # GET /performance_requests/new.json
  def new
    @performance_request = PerformanceRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @performance_request }
    end
  end

  # GET /performance_requests/1/edit
  def edit
    @performance_request = PerformanceRequest.find(params[:id])
  end

  # POST /performance_requests
  # POST /performance_requests.json
  def create
    @performance_request = PerformanceRequest.new(params[:performance_request])
    @performance_request.status = "Pending"
    @performance_request.end_at = @performance_request.start_at
   
    respond_to do |format|
      if @performance_request.save
	NewRequestMailer.new_request_email(@admin).deliver
        format.html { redirect_to '/welcome/home', notice: 'Performance request was successfully created.' }
        format.json { render json: @performance_request, status: :created, location: @performance_request }
      else
        format.html { render action: "new" }
        format.json { render json: @performance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /performance_requests/1
  # PUT /performance_requests/1.json
  def update
    @performance_request = PerformanceRequest.find(params[:id])

    respond_to do |format|
      if @performance_request.update_attributes(params[:performance_request])
        format.html { redirect_to performance_requests_path, notice: 'Performance request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @performance_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_requests/1
  # DELETE /performance_requests/1.json
  def destroy
    @performance_request = PerformanceRequest.find(params[:id])
    @performance_request.destroy

    respond_to do |format|
      format.html { redirect_to performance_requests_url }
      format.json { head :no_content }
    end
  end
end
