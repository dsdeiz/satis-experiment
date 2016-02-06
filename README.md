Playing around with Satis.

## Installation:

1. `git clone https://github.com/dsdeiz/satis-experiment`.
2. Add a `satis.json` (or any `json` file which consists of the `satis` schema) in the **schema** directory.
3. Run `docker-compose up -d`.
4. Run `docker-compose run --rm satis build /schema/<satis.json> /usr/share/nginx/html`.

## TODO:

- Cron needs work.
- Probably a custom `nginx` vhost.
- Possible for the `satis` service to not run during `docker-compose up`. The image only needs to be built.
- Use a script to build `satis` so that it builds directly to `nginx`'s `root`.
