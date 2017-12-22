json.extract! employee, :id, :name, :type_of, :created_at, :updated_at
json.url employee_url(employee, format: :json)
