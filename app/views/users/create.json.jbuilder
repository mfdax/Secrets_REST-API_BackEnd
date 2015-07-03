# on create (after successfully signing user up),
# send back their info including their key

json.(@user, :id, :email, :name, :key)
