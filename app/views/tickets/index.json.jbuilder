json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :status_id, :titulo, :descricao
  json.url ticket_url(ticket, format: :json)
end
