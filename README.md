ridb
====



[![Build Status](https://travis-ci.org/ropenscilabs/ridb.svg?branch=master)](https://travis-ci.org/ropenscilabs/ridb)

`ridb` - and R client for the Index Database of remote sensing indices at <http://www.indexdatabase.de/>

## Install

Development version


```r
devtools::install_github("ropenscilabs/ridb")
```


```r
library("ridb")
```

## list indices


```r
idb_indices()
#> # A tibble: 300 × 9
#>       no                                       name abbreviation
#>    <int>                                      <chr>        <chr>
#> 1      1      Adjusted transformed soil-adjusted VI       ATSAVI
#> 2      2         Aerosol free vegetation index 1600     AFRI1600
#> 3      3         Aerosol free vegetation index 2100     AFRI2100
#> 4      4                                 Alteration             
#> 5      5              Alunite/Kaolinite/Pyrophylite             
#> 6      6                                  Amphibole             
#> 7      7                           Amphibole / MgOH             
#> 8      8              Anthocyanin reflectance index          ARI
#> 9      9                   Ashburn Vegetation Index          AVI
#> 10    10 Atmospherically Resistant Vegetation Index         ARVI
#> # ... with 290 more rows, and 6 more variables: formula <chr>,
#> #   variables <chr>, source <chr>, no_sensors <int>,
#> #   no_applications <int>, no_references <int>
```


## list sensors


```r
idb_sensors()
#> # A tibble: 163 × 13
#>       no    name bands    spectrum spatial_resolution include
#>    <int>   <chr> <int>       <chr>              <chr>   <dbl>
#> 1      1   AAHIS     1     390-840                2-2      NA
#> 2      2   AATSR     7                      1000-1000      NA
#> 3      3    ADAR    NA                                     NA
#> 4      4     AHS    80 428.5-13140                7-8      NA
#> 5      5     AIP     0                                     NA
#> 6      6     AIS     0                                     NA
#> 7      7    AISA   498  400-2506.7                         NA
#> 8      8     ALI    10    433-2350              10-30      NA
#> 9      9    ALOS     6       0-890               0-10    98.2
#> 10    10 AlSAT-1     3                          32-32      NA
#> # ... with 153 more rows, and 7 more variables: platform <chr>,
#> #   operator <chr>, launch_date <chr>, comment <chr>, no_indices <int>,
#> #   no_applications <int>, no_references <int>
```

## list applications


```r
idb_applications()
#> # A tibble: 43 × 6
#>       no                                    name description no_indices
#>    <int>                                   <chr>       <lgl>      <int>
#> 1      1                             Agriculture          NA         22
#> 2      2           Agriculture - Crop parameters          NA          4
#> 3      3                Agriculture - Crop yield          NA          2
#> 4      4                Agriculture - Irrigation          NA          0
#> 5      5           Agriculture - Land management          NA          1
#> 6      6 Agriculture - Precision Crop Management          NA          4
#> 7      7                                   Alpin          NA          0
#> 8      8                                    Fire          NA          2
#> 9      9                                Forestry          NA          3
#> 10    10                       Forestry - Boreal          NA          1
#> # ... with 33 more rows, and 2 more variables: no_sensors <int>,
#> #   no_references <int>
```

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/ridb/issues).
* License: MIT
* Get citation information for `ridb` in R doing `citation(package = 'ridb')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
