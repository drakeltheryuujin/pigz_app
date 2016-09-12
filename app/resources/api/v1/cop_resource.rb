class Api::V1::CopResource < JSONAPI::Resource
  attribute :latitude
  attribute :longitude
  attribute :demeanor
  attribute :activity
  attribute :status
  attribute :persona
end
