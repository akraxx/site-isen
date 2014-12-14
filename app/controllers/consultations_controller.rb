class ConsultationsController < ApplicationController
  
  def index
  	@consultations = Consultation.find(:all)	
  end
    
  def new
  	@consultation = Consultation.new
  	@medecins = Medecin.find(:all)
  	@patients = Patient.find(:all)
    if Consultation.paid_with_card?("card")
      @test = "card"
    else
      @test = "no card"
    end
  end
  
  def show
  end
  
  def create
  	@consultation = Consultation.new(params[:consultation])
  	if @consultation.save
  		redirect_to(@consultation)
   else
   	render :action => "new"
   end
  end
  
  def edit
  end

  def update
  end

  

end
