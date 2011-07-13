class CrimeAlertsController < ApplicationController
  before_filter :get_layer

  # The before_filter action to get the current layer for
  # for all the polygons.
  def get_layer
    @layer = Layer.find(params[:layer_id])
  end

  # GET /call_boxes
  # GET /call_boxes.xml
  def index
    @crime_alerts = CallBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crime_alerts }
    end
  end

  # GET /call_boxes/1
  # GET /call_boxes/1.xml
  def show
    @crime_alert = CallBox.find(params[:id])

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

  # GET /call_boxes/1/edit
  def edit
    @crime_alert = CrimeAlert.find(params[:id])
  end

  # POST /call_boxes
  # POST /call_boxes.xml
  def create
    @call_box = CallBox.new(params[:call_box])

    respond_to do |format|
      if @call_box.save
        format.html { redirect_to([@layer, @call_box], :notice => 'Call box was successfully created.') }
        format.xml  { render :xml => @call_box, :status => :created, :location => @call_box }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @call_box.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /call_boxes/1
  # PUT /call_boxes/1.xml
  def update
    @call_box = CallBox.find(params[:id])

    respond_to do |format|
      if @call_box.update_attributes(params[:call_box])
        format.html { redirect_to(@call_box, :notice => 'Call box was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @call_box.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /call_boxes/1
  # DELETE /call_boxes/1.xml
  def destroy
    @call_box = CallBox.find(params[:id])
    @call_box.destroy

    respond_to do |format|
      format.html { redirect_to(layer_url) }
      format.xml  { head :ok }
    end
  end
end