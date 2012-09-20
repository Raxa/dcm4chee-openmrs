class Patient
  include DataMapper::Resource

  storage_names[:default] = 'patient'

  property :patient_id, Serial
  property :date_created, DateTime

  has n, :identifiers, model: Identifier, child_key: :patient_id
end
