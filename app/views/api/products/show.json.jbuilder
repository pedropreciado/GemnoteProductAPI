json.partial! 'api/products/product', product: @product

images = @product.images.map {|img| img.url}

json.images images

info = @product.information.map {|info| info.body}

json.information info

unless @product.options.empty?
  ops = @product.options.map {|option| option.option_id}
  json.option_ids ops
end
