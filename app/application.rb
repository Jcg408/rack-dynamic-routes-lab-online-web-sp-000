class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/"
      item_name = req.path.split("/items/").last
      
      if item.name
 
    resp.finish
  end

end