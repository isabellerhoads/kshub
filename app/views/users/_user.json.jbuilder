json.extract! user, :id, :UIN, :FirstName, :LastName, :PhoneNumber, :Email, :isAdmin, :PledgeClass, :Major, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)