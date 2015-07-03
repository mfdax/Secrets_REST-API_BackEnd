# on successful login,
# send back their info including their key

json.(@user, :id, :name, :email, :key)
