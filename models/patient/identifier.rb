class Patient
  class Identifier
    include DataMapper::Resource

    storage_names[:default] = 'patient_identifier'

    property :patient_identifier_id, Serial
    property :patient_id, Serial

    belongs_to :patients, child_key: :patient_id
  end
end
