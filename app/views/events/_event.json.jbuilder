json.extract! event, :id, :kind, :description, :happened_at, :created_at, :updated_at
json.url tree_event_url(tree, event, format: :json)
