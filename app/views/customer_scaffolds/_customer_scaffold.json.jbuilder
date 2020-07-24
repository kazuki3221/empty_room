json.extract! customer_scaffold, :id, :email, :name_first, :name_first_kana, :name_last, :name_last, :tel, :placeholder, :birthday, :created_at, :updated_at
json.url customer_scaffold_url(customer_scaffold, format: :json)
