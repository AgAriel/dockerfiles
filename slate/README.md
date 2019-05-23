# slate

> [slate](https://github.com/lord/slate) in a docker image

## develop

> docker run --rm -v $PWD/docs:/slate/source -p 4567:4567 -it slate dev

the preview will be available at http://127.0.0.1:4567

## publish

> docker run --rm -v $PWD/docs:/slate/source slate
