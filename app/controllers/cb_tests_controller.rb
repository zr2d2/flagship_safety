class CbTestsController < ApplicationController
  # GET /cb_tests
  # GET /cb_tests.xml
  def index
    @cb_tests = CbTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cb_tests }
    end
  end

  # GET /cb_tests/1
  # GET /cb_tests/1.xml
  def show
    @cb_test = CbTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cb_test }
    end
  end

  # GET /cb_tests/new
  # GET /cb_tests/new.xml
  def new
    @cb_test = CbTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cb_test }
    end
  end

  # GET /cb_tests/1/edit
  def edit
    @cb_test = CbTest.find(params[:id])
  end

  # POST /cb_tests
  # POST /cb_tests.xml
  def create
    @cb_test = CbTest.new(params[:cb_test])

    respond_to do |format|
      if @cb_test.save
        format.html { redirect_to(@cb_test, :notice => 'Cb test was successfully created.') }
        format.xml  { render :xml => @cb_test, :status => :created, :location => @cb_test }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cb_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cb_tests/1
  # PUT /cb_tests/1.xml
  def update
    @cb_test = CbTest.find(params[:id])

    respond_to do |format|
      if @cb_test.update_attributes(params[:cb_test])
        format.html { redirect_to(@cb_test, :notice => 'Cb test was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cb_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cb_tests/1
  # DELETE /cb_tests/1.xml
  def destroy
    @cb_test = CbTest.find(params[:id])
    @cb_test.destroy

    respond_to do |format|
      format.html { redirect_to(cb_tests_url) }
      format.xml  { head :ok }
    end
  end
end
