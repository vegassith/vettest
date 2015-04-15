class CustomersController < ApplicationController


  # GET /customers
  # GET /customers.json
  def index
    @appointments = Appointment.all
  end


end
