class Application
  def call(env)
    req = Rack::Request.new(env)

    if req.path.match("/hello/")
      send_hello
    elsif req.path.match("/sellers") && req.get?
      get_sellers
    elsif req.path.match("/sellers") && req.post?
      post_seller(req)
    elsif req.path.match("/sellers") && req.patch?
      patch_seller(req)
    elsif req.path.match("/sellers") && req.delete?
      dlt_seller(req)
    else
      send_not_found
    end
  end

  private

  def send_hello
    return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
  end

  def get_sellers
    seller_arr = Seller.all .to_json(:include => :items)
    return [200, { "Content-Type" => "application/json" }, [seller_arr]]
  end

  def post_seller(req)
    seller_hash = JSON.parse(req.body.read)
    new_seller = Seller.create(seller_hash)
    return [201, { "Content-Type" => "application/json" }, [new_seller.display_data]]
  end

  def patch_seller(req)
    edit_hash = JSON.parse(req.body.read)
    id = req.path.split("/").last
    found_seller = Seller.find(id)
    found_seller.update(edit_hash)
    return [200, { 'Content-Type' => 'application/json' }, [ found_seller.display_data ]]
  end

  def dlt_seller(req)
    id = req.path.split("/").last
    found_seller = Seller.find(id)
    found_seller.destroy
    return [200, { 'Content-Type' => 'application/json' }, [ found_seller.display_data ]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end
