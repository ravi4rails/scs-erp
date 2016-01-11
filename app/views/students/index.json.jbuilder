json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :middle_name, :last_name, :father_name, :mother_name, :contact_1, :contact_2, :relegion, :cast, :category
  json.url student_url(student, format: :json)
end
