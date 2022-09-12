json.extract! tree, :id, :description, :longitude, :latitude, :created_at, :updated_at
json.events_url tree_events_url(tree, tree.events, format: :json)
json.url tree_url(tree, format: :json)
