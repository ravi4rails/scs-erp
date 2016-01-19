json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :middle_name, :last_name, :age, :residential_address, :permanenet_address
  json.url employee_url(employee, format: :json)
end
