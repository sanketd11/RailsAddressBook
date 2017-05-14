class ContactsController < ApplicationController
  def index
  	@contacts=Contact.order(:firstname).all
  end

  def show
  	@contact=Contact.find(params[:id])
  end

  def new
  	@contact=Contact.new
  end

  def edit
  	@contact=Contact.find(params[:id])
  end

  def create
  	@contact=Contact.new(contact_params)
  	@contact.firstname.capitalize!
  	@contact.lastname.capitalize!
  	if @contact.save
    	redirect_to @contact
  	else
    	render 'new'
  	end 	 	
  end

  def update
	@contact = Contact.find(params[:id])
	if @contact.update_attributes(contact_params)
	  	redirect_to @contact
	else
	  	render 'edit'
	end
  end

  def destroy
	  @contact = Contact.find(params[:id])
	  @contact.destroy	 
	  redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:firstname, :lastname,:address, :city,:state, :country,:zip ,:email, :phone)
  end

end
