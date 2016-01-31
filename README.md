Playing around with Satis.

## Usage:

### Modify `Dockerfile` from repository:

1. `git clone https://github.com/dsdeiz/satis-experiment && cd satis-experiment`.
2. Modify `satis.json`.
3. `docker build -t <name>/satis .`.
4. `docker run -P -d <name>/satis`.

### Probably a better way:

1. `docker build -t dsdeiz/satis https://github.com/dsdeiz/satis-experiment.git`.
2. Add a `satis.json` file.
3. Add a `Dockerfile` following:
  ```
  FROM dsdeiz/satis
  COPY satis.json /satis
  ```
4. `docker build -t <name>/satis .`.
5. `docker run -P -d <name>/satis`.

## TODO:

`cron` is untested. :smiley:
