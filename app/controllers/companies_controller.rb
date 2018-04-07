class CompaniesController < ApplicationController
  def index
    companies = Company.all
    render json: companies.as_json
  end
end
