class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    def missing_email
        @customers = Customer.where('LENGTH(email) = 0')
    end

    def alphabetized
        @customers = Customer.all.order(full_name: :asc)
    end

end
