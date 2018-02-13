class ClientsController < ApplicationController
  #GET/clients
  #GET/clients.xml
  def new
    @client = Client.new
    respond_to |format|
      format.html #new.html.erb
      format.xml { render :xml => @client}
    end
  end

  def create
    @client = Client.new(client_params)
    respond_to do |format|
      if @client.save
        format.html{ redirect_to(@client, :notice => 'Client was succesfully created.')}
        format.xml{ render :xml => @client, :status => :created, :location => @client}
      else
        format.html{ render :action => "new"}
        format.xml { render :xml => @client.errors, :status => :unprocessable_entity}
      end
    end
  end

  def update
    @client = Client.find(params[ :id])
    respond_to do |format|
      if @client.update_attributes(client_params)
        format.html { redirect_to(@client, :notice => 'Client was successfully updated.')}
        format.xml { head :ok}
      else
        format.html{ render :action => "edit"}
        format.xml { render :xml => @client.errors, :status => :unprocessable_entity}
      end
    end
  end

  def edit
    @client=Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[ :id])
    @client.destroy
    respond_to do |format|
      format.html { redirect_to(clients_url)}
      format.xml { head :ok}
    end
  end

  def index
    @clients = Client.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml{render :xml => @clients}
    end
  end

  def show
    @client = Client.find(params[:id])
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render :xml =>@client}
  end
  private
  def client_params
    params.require(:client).permit(:Prenom, :Nom, :DateNaissance, :NAS, :Adresse_id, :NombreEnfants, :CompteTaxesProprietaire
    enfants_attributes: [:id, :_destroy, :Nom, :Prenom, :DateNaissance],
    etatscivils_attributes: [:id, :type, :_destroy],
    employeurs_attributes: [:id, :Nom, :_destroy],
    adresses_attributes: [:id, :_destroy, :NumeroCivique, :Rue, :CodePostal, :Ville, :Province]
    etudes_attributes: [:id, :_destroy, :SecteurEtudes, :Niveau, :DateDebut, :DateCompletion, :Clients_id, :Institutions_id]
    institutions_attributes: [:id, :_destroy, :Nom, :Adresse_id])
  end
end
