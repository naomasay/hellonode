{
  "name": "getintodevops-hellonode",
  "version": "1.0.0",
  "description": "A Hello World HTTP server",
  "main": "main.js",
  "scripts": {
    "test": "node test.js",
    "start": "node main.js"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/getintodevops/masterclass-codeexamples/"
  },
  "keywords": [
    "node",
    "docker",
    "dockerfile"
  ],
  "author": "miiro@getintodevops.com",
  "license": "ISC",
  "devDependencies": { "test": ">=0.6.0" }
}

[devops@docker02 helloops]$ cat Dockerfile
FROM node:7-onbuild
HEALTHCHECK --interval=5s \
            --timeout=5s \
             CMD curl -f http://127.0.0.1:8000 || exit 1
EXPOSE 8000
