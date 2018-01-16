# GemnoteProductAPI

GemnoteProductAPI is a API that returns product information, images, pricing, and other options (if available). Built with Rails 5.1.4 and PostgreSQL. 

## Setup

Clone this repo locally and `cd` to the projects root directory. Seeds are in db/seeds.rb

On the command line:

+ Run `brew install postgresql`
+ Start the PostgreSQL server app
+ Run `bundle install`
+ Run `bundle exec rails db:setup`
+ Run `bundle exec rails server`

## API

HTTP requests were tested using Postman.

### Products

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
|`category_id`|true|id of category for product (find in CategoryAPI)|
|`pricing`|true|Price per unit of product|
|`option`|false|Option name if one of many similar products|


### Categories

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

## Features to be Added

+ Create subcategories through HTTP request
+ Set product images through HTTP request
+ Set information for product through HTTP request
+ Set options for product through HTTP request
