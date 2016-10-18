### Configure access details for test
```bash
cp test/utils/access.template.json test/utils/access.private.json
nano test/utils/access.private.json # add your credentials and save
```

### Run tests
`docker exec -it dev_pile_1 mocha test/datacube.test.js`


```
# example output

  Cubes
    ain't nuttin to fuck with
      ✓ should create empty cube @ /v2/cubes/create
      ✓ should create cube with options @ /v2/cubes/create
      ✓ should create cube with a dataset @ /v2/cubes/create
      ✓ should get cube by cube_id @ /v2/cubes/get
      ✓ should add dataset @ /v2/cubes/add
      ✓ should remove dataset @ /v2/cubes/remove
      ✓ should update cube @ /v2/cubes/update
      ✓ should upload dataset @ /v2/data/import (205ms)
      ✓ should upload second dataset @ /v2/data/import
      ✓ should add dataset to cube @ /v2/cubes/add
      ✓ should add second dataset to cube @ /v2/cubes/add
      ✓ should process raster (2580ms)
      ✓ should process second raster
      ✓ should get expected raster-tile from cube
      ✓ should get expected second raster-tile from cube
      ✓ should get cube containing two datasets
      ✓ should create CubeLayer on Wu API
      ✓ should create empty cube @ /v2/cubes/create
      ✓ should add geojson mask @ /v2/cubes/mask
      ✓ should add topojson mask @ /v2/cubes/mask
      ✓ should add data and options with geojson mask @ /v2/cubes/mask
      ✓ should upload cube-vector-mask.zip
      ✓ should process
      ✓ should add vector mask from postgis @ /v2/cubes/mask
      ✓ should upload cube-raster-mask.tif
      ✓ should process
      ✓ should add raster mask from postgis @ /v2/cubes/mask
      - should throw on invalid mask @ /v2/cubes/mask
      ✓ should throw on invalid topology type @ /v2/cubes/mask
      ✓ should remove mask @ /v2/cubes/unmask
      ✓ should create empty cube @ /v2/cubes/create
      ✓ should update cube @ /v2/cubes/update
      ✓ should add dataset to cube @ /v2/cubes/add
      ✓ should get expected raster-tile from cube
      ✓ should replace dataset in cube @ /v2/cubes/replace
      ✓ should get expected second raster-tile from cube


  35 passing (12s)
  1 pending

```
