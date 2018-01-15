json.extract! product, :id, :title, :pricing, :option

json.category product.category.title

images = product.images.map {|img| img.url}

json.images images

info = product.information.map {|info| info.body}

json.information info

unless product.options.empty?
  ops = product.options.map {|option| option.option_id}
  json.option_ids ops
end
