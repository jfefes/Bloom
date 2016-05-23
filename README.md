== Bloom

The philosophy behind Bloom is simple- A developer-first CMS, leveraging the power of Rails on the backend and React on the frontend.

Example:
* An example page has been created and can be viewed at https://fathomless-hamlet-26514.herokuapp.com/example

* The component rendered on this page is located in /app/assets/javascripts/components/shared-components

== Requirements

Out-of-the-box Bloom only requires a Postgres database to get started. To change the database provider, simply update config/database.rb and your gem file.


== Setup

Files in /db/seeds/ can be executed via
  rake db:seed:single SEED=file
No not include file extentions. Example:
  rake db:seed:single SEED=example
Will seed the /db/seeds/example.seeds.rb file.

== Contributing

Contributing is encouraged! Please contact us at http://bloom-cms.slack.com. Feature discussions and roadmaps will be included here as well!
