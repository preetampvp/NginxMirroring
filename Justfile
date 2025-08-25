@watch:
    dotnet watch --project ./Mirroring.Api
    
@nginx-build:
  (cd .docker && docker build -t mirror:latest .)
  
@nginx-run:
    docker rm -f mirror && docker run --rm --network host --name mirror mirror:latest
