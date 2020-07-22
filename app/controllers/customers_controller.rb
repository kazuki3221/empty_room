class CustomersController < ApplicationController

  def new
    @user = Customer.new
  end


end
