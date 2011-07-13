class IconsController < ApplicationController
  load_and_authorize_resource

  # GET /icons
  # GET /icons.xml
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @icons }
    end
  end

  # GET /icons/new
  # GET /icons/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @icon }
    end
  end

  # GET /icons/1/edit
  def edit
  end

  # POST /icons
  # POST /icons.xml
  def create
    respond_to do |format|
      if @icon.save
        format.html { redirect_to(icons_url, :notice => 'Icon was successfully created.') }
        format.xml  { render :xml => @icon, :status => :created, :location => @icon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @icon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /icons/1
  # PUT /icons/1.xml
  def update
    respond_to do |format|
      if @icon.update_attributes(params[:icon])
        format.html { redirect_to(icons_url, :notice => 'Icon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @icon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /icons/1
  # DELETE /icons/1.xml
  def destroy
    @icon.destroy

    respond_to do |format|
      format.html { redirect_to(icons_url) }
      format.xml  { head :ok }
    end
  end
end
