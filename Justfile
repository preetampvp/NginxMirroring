@watch:
    dotnet watch --project ./Mirroring.Api
    
@nginx-build:
  (cd .docker && docker build -t mirror:latest .)
  
@nginx-run: nginx-build
    docker rm -f mirror && docker run --rm --network host --name mirror mirror:latest

@hurl:
    hurl -k ./hurl/mirror.hurl --verbose