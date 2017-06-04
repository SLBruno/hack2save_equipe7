## Dependencies

This app is docker based, so you should have `docker` and `docker-compose` installed in your machine.

## Usage

Clone this repository: `git clone https://github.com/rafaelBadan/hack2save_equipe7.git`.

In the repository folder, run:

  * `docker-compose build`;
  * `docker-compose run --rm rake db:create`;
  * `docker-compose run --rm rake db:migrate`.  
