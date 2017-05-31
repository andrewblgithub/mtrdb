json.extract! lab_result, :id, :date, :creatinine, :bilirubin, :albumin, :hematocrit, :glucose, :patient_id, :created_at, :updated_at
json.url lab_result_url(lab_result, format: :json)
