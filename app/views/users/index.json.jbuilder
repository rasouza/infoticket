json.array!(@users) do |user|
  json.extract! user, :id, :maquina_id, :nome, :email, :senha
  json.url user_url(user, format: :json)
end
