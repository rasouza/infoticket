json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :titulo, :descricao, :user_id, :status_id
  json.url ticket_url(ticket, format: :json)
end
