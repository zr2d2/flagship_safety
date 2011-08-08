class CallBoxesController < ApplicationController
  before_filter :get_layer

  # The before_filter action to get the current layer for
  # for all the polygons.
  def get_layer
    @layer = Layer.find(params[:layer_id])
  end

  # GET /call_boxes
  # GET /call_boxes.xml
  def index
    @call_boxes = CallBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @call_boxes }
    end
  end

  # GET /call_boxes/1
  # GET /call_boxes/1.xml
  def show
    @call_box = CallBox.find(params[:id])
    @cb_tests = CbTest.find(:all, :conditions => {:cb_number => @call_box.cb_num})

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @call_box }
    end
  end

  # GET /call_boxes/new
  # GET /call_boxes/new.xml
  def new
    @call_box = CallBox.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @call_box }
    end
  end

  # GET /call_boxes/1/edit
  def edit
    @call_box = CallBox.find(params[:id])
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
        format.html { redirect_to([@layer, @call_box], :notice => 'Call Box was successfully updated.') }
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
