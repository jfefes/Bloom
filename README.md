# Bloom

The philosophy behind Bloom is simple- A developer-first CMS, leveraging the power of Rails on the backend and React on the frontend. Bloom is an abstraction of the backend engine for The Outdoor Group. 

Example:
* An example page has been created and can be viewed at https://fathomless-hamlet-26514.herokuapp.com/example

* The component rendered on this page is located in /app/assets/javascripts/components/shared-components

# Requirements and Setup

Out-of-the-box Bloom only requires a Postgres database to get started. To change the database provider, simply update config/database.rb and your gem file.

Files in /db/seeds/ can be executed via
  rake db:seed:single SEED=file
No not include file extentions. Example:
  rake db:seed:single SEED=example
Will seed the /db/seeds/example.seeds.rb file.

# Contributing

Contributing is encouraged! Planned features and roadmap will be posted shortly.
