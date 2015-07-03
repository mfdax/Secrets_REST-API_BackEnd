# secrets#index

# json.array! @secrets do |secret|
#   json.id       secret.id
#   json.content  secret.content
#
#   json.user do
#     json.id     secret.user.id
#     json.email  secret.user.email
#   end
# end

json.array! @secrets, :id, :content, :user_id, :created_at
