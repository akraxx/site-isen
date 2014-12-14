class MedecinsController < ApplicationController
  # GET /medecins
  # GET /medecins.xml
  def index
    @medecins = Medecin.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medecins }
    end
  end

  # GET /medecins/1
  # GET /medecins/1.xml
  def show
    @medecin = Medecin.find(params[:id])
	 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medecin }
    end
  end

  # GET /medecins/new
  # GET /medecins/new.xml
  def new
    @medecin = Medecin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medecin }
    end
  end

  # GET /medecins/1/edit
  def edit
    @medecin = Medecin.find(params[:id])
  end

  # POST /medecins
  # POST /medecins.xml
  def create
    @medecin = Medecin.new(params[:medecin])

    respond_to do |format|
      if @medecin.save
        flash[:notice] = 'Medecin was successfully created.'
        format.html { redirect_to(@medecin) }
        format.xml  { render :xml => @medecin, :status => :created, :location => @medecin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medecin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medecins/1
  # PUT /medecins/1.xml
  def update
    @medecin = Medecin.find(params[:id])

    respond_to do |format|
      if @medecin.update_attributes(params[:medecin])
        flash[:notice] = 'Medecin was successfully updated.'
        format.html { redirect_to(@medecin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medecin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medecins/1
  # DELETE /medecins/1.xml
  def destroy
    @medecin = Medecin.find(params[:id])
    @medecin.destroy

    respond_to do |format|
      format.html { redirect_to(medecins_url) }
      format.xml  { head :ok }
    end
  end
end
