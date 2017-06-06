## Dependencies

This app is docker based, so you should have `docker` and `docker-compose` installed in your machine.

## Usage

Clone this repository: `git clone https://github.com/rafaelBadan/voluntea.git`.

In the repository folder, run:
  * `docker-compose build`;
  * `docker-compose run --rm app bundle install`;
  * `docker-compose run --rm app rake db:create`;
  * `docker-compose run --rm app rake db:migrate`.  

It's done! To start your application, run `docker-compose up` and access `http://localhost:3000` in your browser.
