json.extract! ingridient, :id, :name, :volume, :cals, :fats, :carbs, :proteins, :dish_id, :created_at, :updated_at
json.url ingridient_url(ingridient, format: :json)
