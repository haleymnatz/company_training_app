class CompaniesController < ApplicationController
  def index
    json_for_object(Company.all)
  end

  def alphabetically
    json_for_object(Company.order(name: :asc))
  end

  private

  def json_for_object(object)
    render json: object
  end
end
