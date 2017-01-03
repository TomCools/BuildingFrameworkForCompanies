# BuildingFrameworkForCompanies

Slides will be made with reveal.js -> https://www.npmjs.com/package/generator-reveal-infosupport

## Running the container
### For developement
```
docker run -i -t  -p 9000:9000 -v /c/projects/2017/BuildingFrameworkForCompanies/slides:/home/docker/slides buildingframeworkforcompanies bash
```
### For demo
```
docker run -i -t  -p 9000:9000 -v /c/projects/2017/BuildingFrameworkForCompanies/slides:/home/docker/slides buildingframeworkforcompanies grunt serve
```
