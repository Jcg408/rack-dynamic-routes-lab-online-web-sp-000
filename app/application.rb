class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/"
      item_name = req.path.split("/items/").last
      
      item = @@items.find{|i| i.name == item_name}
        if item
          resp.write "#{item.price}"
         
        else
          resp.write "Item not found"
          resp.status = 400
        end
         binding.pry
      end
        
        
 
 
 
 
    resp.finish
  end

end