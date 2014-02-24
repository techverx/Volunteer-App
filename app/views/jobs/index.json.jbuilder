json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :vacancies, :wage_per_hour, :description, :time_from, :time_to, :company_id, :publish
  json.url job_url(job, format: :json)
end
