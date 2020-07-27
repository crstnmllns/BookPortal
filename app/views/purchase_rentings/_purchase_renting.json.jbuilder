json.extract! purchase_renting, :id, :status, :quantity, :price, :user_id, :book_id, :created_at, :updated_at
json.url purchase_renting_url(purchase_renting, format: :json)
