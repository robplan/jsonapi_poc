class UserResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email
  has_many :phone_numbers
end
