class CrimeAlertsController < ApplicationController
  before_filter :get_layer

  # The before_filter action to get the current layer for
  # for all the polygons.
  def get_layer
    @layer = Layer.find(params[:layer_id])
  end

  # GET /crime_alerts
  # GET /crime_alerts.xml
  def index
    @crime_alerts = CrimeAlert.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crime_alerts }
    end
  end

  # GET /crime_alerts/1
  # GET /crime_alerts/1.xml
  def show
    @crime_alert = CrimeAlert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crime_alerts }
    end
  end

  # GET /crime_alerts/new
  # GET /crime_alerts/new.xml
  def new
    @crime_alert = CrimeAlert.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crime_alert }
    end
  end

  # GET /crime_alerts/1/edit
  def edit
    @crime_alert = CrimeAlert.find(params[:id])
  end

  # POST /crime_alerts/
  # POST /crime_alerts.xml
  def create
    @crime_alert = CrimeAlert.new(params[:crime_alert])

    respond_to do |format|
      if @crime_alert.save
        format.html { redirect_to([@layer, @crime_alert], :notice => 'Crime Alert was successfully created.') }
        format.xml  { render :xml => @crime_alert, :status => :created, :location => @crime_alert }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crime_alert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crime_alerts/1
  # PUT /crime_alerts/1.xml
  def update
    @crime_alert = CrimeAlert.find(params[:id])

    respond_to do |format|
      if @crime_alert.update_attributes(params[:crime_alert])
        format.html { redirect_to(@crime_alert, :notice => 'Crime Alert was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crime_alert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crime_alerts/1
  # DELETE /crime_alerts/1.xml
  def destroy
    @crime_alert = CrimeAlert.find(params[:id])
    @crime_alert.destroy

    respond_to do |format|
      format.html { redirect_to(layer_url) }
      format.xml  { head :ok }
    end
  end
end
