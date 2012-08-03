class Person
  include DataMapper::Resource

  property :person_id, Serial
  property :gender, String
  property :birthdate, Date
  property :uuid, UUID
end
