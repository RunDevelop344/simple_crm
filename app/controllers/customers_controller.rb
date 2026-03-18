class CustomersController < ApplicationController

  # "/" → all customers
  def index
    @customers = Customer.all
  end

  # "/customers/alphabetized"
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # "/customers/missing_email"
  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end

end