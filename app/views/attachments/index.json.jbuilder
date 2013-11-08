json.array!(@attachments) do |attachment|
  json.extract! attachment, :user_id
  json.url attachment_url(attachment, format: :json)
end
