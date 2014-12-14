class ProduitsController < ApplicationController
	before_filter :find_post, :only => [:show, :edit, :update, :destroy]
  # GET /produits
  # GET /produits.xml
  def index
    @produits = Produit.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produits }
    end
  end

  # GET /produits/1
  # GET /produits/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produit }
    end
  end

  # GET /produits/new
  # GET /produits/new.xml
  def new
    @produit = Produit.new
	
	if Produit.is_logged()
		flash[:notice] = Produit.is_logged()
	end
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produit }
   end

  end

  # GET /produits/1/edit
  def edit
  end

  # POST /produits
  # POST /produits.xml
  def create

	    @produit = Produit.new(params[:produit])
	
	    respond_to do |format|
	      if @produit.save
	        flash[:notice] = 'Produit was successfully created.'
	        format.html { redirect_to(@produit) }
	        format.xml  { render :xml => @produit, :status => :created, :location => @produit }
	      else
	        format.html { render :action => "new" }
	        format.xml  { render :xml => @produit.errors, :status => :unprocessable_entity }
	      end
	    end

  end

  # PUT /produits/1
  # PUT /produits/1.xml
  def update

    respond_to do |format|
      if @produit.update_attributes(params[:produit])
        flash[:notice] = 'Produit was successfully updated.'
        format.html { redirect_to(@produit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.xml
  def destroy
    @produit.destroy

    respond_to do |format|
      format.html { redirect_to(produits_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  def find_post
  	@produit = Produit.find(params[:id])
  end
end
