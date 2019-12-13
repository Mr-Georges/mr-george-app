json.extract! hotel, :id, :name, :phone_number, :city, :country_code, :postal_code, :state, :street_name, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
