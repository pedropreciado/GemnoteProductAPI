# GemnoteProductAPI

GemnoteProductAPI is a API that returns product information, images, pricing, and other options (if available). Built with Rails 5.1.4 and PostgreSQL.

## Setup

Clone this repo locally and `cd` to the project's root directory. Seeds are in db/seeds.rb.

On the command line:

+ Run `brew install postgresql`
+ Start the PostgreSQL server app
+ Run `bundle install`
+ Run `bundle exec rails db:setup`
+ Run `bundle exec rails server`

## API

HTTP requests were tested using Postman.

### Categories

All products are required to be categorized.

`ReceiveAllCategories`

+ method: `GET`

+ url: `localhost:3000/api/categories`

`ReceiveCategory`

+ method: `GET`

+ url: `localhost:3000/api/categories/{CATEGORY_ID}`

`CreateCategory`

+ method: `POST`

+ url: `localhost:3000/api/categories`

|parameters|mandatory|description|
|---|---|---|
|`title`|true|Name of the new product|

### Subcategories

Categories can many subcategories. For example, an "Apparel" category can have "Men's" and "Women's" subcategories.

`CreateSubcategory`

+ method: `POST`

+ url: `localhost:3000/api/categories`

|parameters|mandatory|description|
|---|---|---|
|`parent_category_id`|true|id of parent category|
|`child_category_id`|true|id of child category|

### Products

Products require a category. If a product has many varieties, these options can be set by the OptionAPI.

`ReceiveAllProducts`

+ method: `"GET"`

+ url: `localhost:3000/api/products`

`ReceiveProduct`

+ method: `GET`

+ url: `localhost:3000/api/products/{PRODUCT_ID}`

`CreateProduct`

+ method: `POST`

+ url: `localhost:3000/api/products`

|parameters|mandatory|description|
|---|---|---|
|`title`|true|Name of the new product|
|`category_id`|true|id of category (or subcategory) for product (find in CategoryAPI)|
|`pricing`|true|Price per unit of product|
|`option`|false|Option name if one of many similar products|




### Information

A product can have multiple lines of information. The information is stored as a list of single line sentences.

`AddInformation`

+ method: `POST`

+ url: `localhost:3000/api/information`

|parameters|mandatory|description|
|---|---|---|
|`body`|true|Single line sentence of information|
|`product_id`|true|id of product to add information to|


## Features to be Added

+ Set images for product through HTTP request
+ Set options for product through HTTP request
