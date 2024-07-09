# priobike-privacy-policy-service

This repo contains a setup for the deployment of a markdown page as a HTML web page. We use this specifically for the privacy policy of the PrioBike-App. In the build process of the image, the markdown page is converted to HTML and afterwards made available via an nginx web server.

[Learn more about PrioBike](https://github.com/priobike)

## Quickstart

Edit the `privacy-policy.md` file.

To test locally run:
```
docker-compose up --build
```
and go to `localhost` in the browser.

## API

The generated HTML page is available at `/index.html`.

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license. 

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.
