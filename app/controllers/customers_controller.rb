class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  def missing_email
    @customer_missing_email = Customer.where(email_address: '')
  end
  def alphabetized
    @customer = Customer.order(:full_name)
  end
end
