json.extract! patient, :id, :MTID, :DateOfBirth, :Sex, :DateOfAdmission, :DateOfDischarge, :Expired, :LevelOfEducation, :PrimaryDiagnosis, :BrainMetastases, :LiverMetastases, :HepaticEncephalopathy, :Delirium, :Dementia, :CAM, :CVA, :Nonverbal, :HearingImpaired, :created_at, :updated_at
json.url patient_url(patient, format: :json)
