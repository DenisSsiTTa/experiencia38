json.extract! tarea, :id, :title, :description, :ubicacion, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
