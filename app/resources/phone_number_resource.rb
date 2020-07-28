class PhoneNumberResource < JSONAPI::Resource
  attributes :name, :phone_number
  has_one :user

  filter :user
end
