json.extract! note, :id, :title, :subtitle, :body, :created_at, :updated_at
json.url note_url(note, format: :json)
