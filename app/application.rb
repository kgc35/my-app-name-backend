class Application
  def call(env)
    req = Rack::Request.new(env)

    if req.path.match("/sellers") && req.get?
      get_sellers
    elsif req.path.match("/items") && req.get?
      get_items
    elsif req.path.match("/items") && req.post?
      post_item(req)
    elsif req.path.match("/items") && req.patch?
      patch_item(req)
    elsif req.path.match("/items") && req.delete?
      dlt_item(req)
    else
      send_not_found
    end
  end

  private

  def get_sellers
    seller_arr = Seller.all .to_json(:include => :items)
    return [200, { "Content-Type" => "application/json" }, [seller_arr]]
  end

  def get_items
    item_arr = Item.all.to_json
    return [200, { "Content-Type" => "application/json" }, [item_arr]]
  end

  def post_item(req)
    item_hash = JSON.parse(req.body.read)
    new_item = Item.create(item_hash)
    return [201, { "Content-Type" => "application/json" }, [new_item.to_json]]
  end

  def patch_item(req)
    edit_hash = JSON.parse(req.body.read)
    id = req.path.split("/").last
    found_item = Item.find(id)
    found_item.update(edit_hash)
    return [200, { 'Content-Type' => 'application/json' }, [ found_item.to_json ]]
  end

  def dlt_item(req)
    id = req.path.split("/").last
    found_item = Item.find(id)
    found_item.destroy
    return [200, { 'Content-Type' => 'application/json' }, [ found_item.to_json ]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end
