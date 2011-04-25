class ScmailsController < ApplicationController
  # GET /scmails
  # GET /scmails.xml
  def index
    @scmails = Scmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scmails }
    end
  end

  # GET /scmails/1
  # GET /scmails/1.xml
  def show
    @scmail = Scmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scmail }
    end
  end

  # GET /scmails/new
  # GET /scmails/new.xml
  def new
    @scmail = Scmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scmail }
    end
  end

  # GET /scmails/1/edit
  def edit
    @scmail = Scmail.find(params[:id])
  end

  # POST /scmails
  # POST /scmails.xml
  def create
    @scmail = Scmail.new(params[:scmail])

    respond_to do |format|
      if @scmail.save
        ScmailMailer.scheduled_email(@scmail).deliver
        format.html { redirect_to(@scmail, :notice => 'Your mail was successfully scheduled.') }
        format.xml  { render :xml => @scmail, :status => :created, :location => @scmail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scmail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scmails/1
  # PUT /scmails/1.xml
  def update
    @scmail = Scmail.find(params[:id])

    respond_to do |format|
      if @scmail.update_attributes(params[:scmail])
        format.html { redirect_to(@scmail, :notice => 'Your Scmail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scmail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scmails/1
  # DELETE /scmails/1.xml
  def destroy
    @scmail = Scmail.find(params[:id])
    @scmail.destroy

    respond_to do |format|
      format.html { redirect_to(scmails_url) }
      format.xml  { head :ok }
    end
  end
end
