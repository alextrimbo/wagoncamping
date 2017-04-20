module ApplicationHelper
  def background_image(photo, default)
    url = photo ? photo.fullpath : asset_path(default)
    "background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2)), url('#{url}');"
  end
end

