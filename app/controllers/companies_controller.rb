class CompaniesController < ApplicationController
  def index
    json_for_object(Company.all)
  end

  def alphabetically
    json_for_object(Company.order(name: :asc))
  end

  def with_modern_plan
    json_for_object(Company.modern_plan_level_companies)
  end

  def not_trialing
    json_for_object(Company.not_actively_trialing)
  end

  def created_last_month
    json_for_object(Company.from_last_month)
  end

  private

  def json_for_object(object)
    render json: object.as_json
  end
end
