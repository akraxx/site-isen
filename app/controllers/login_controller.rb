class LoginController < ApplicationController
  skip_before_filter :require_login, :only => [:connexion]

  def connexion
  	 @utilisateur = Utilisateur.find(params[:id])
	 @utilisateur.pwd = Utilisateur.sha1(@utilisateur.pwd)
    respond_to do |format|
      if Utilisateur.authenticate_safely(@utilisateur.login, @utilisateur.pwd)
        flash[:notice] = "logge"
        session[:user] = @user
        format.html { render :action => "connexion" }
        format.xml  { render :xml => @utilisateur, :status => :created, :location => @utilisateur }
      else
      	flash[:notice] = Utilisateur.retour('lol')
        format.html { render :action => "connexion" }
        format.xml  { render :xml => @utilisateur.errors, :status => :unprocessable_entity }
      end
      
      if session[:user]
      	flash[:notice] = "session"
      end
      
    end
  end


end
