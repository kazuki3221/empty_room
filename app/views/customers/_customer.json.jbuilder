json.extract! customer, :id, :email, :first_name, :first_name_kana, :last_name, :last_name_kana, :tel, :placeholder, :birthday, :created_at, :updated_at, :company
json.url customer_url(customer, format: :json)
