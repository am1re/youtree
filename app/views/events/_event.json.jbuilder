json.extract! event, :id, :created_at, :updated_at
json.url tree_event_url(tree, event, format: :json)
