class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/"
      item_name = req.path.split("/items/").last
      
      item = @@items.find{|i| i.name == ite_name}
    end
 
 
 
 
    resp.finish
  end

end