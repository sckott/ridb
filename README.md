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

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/ridb/issues).
* License: MIT
* Get citation information for `ridb` in R doing `citation(package = 'ridb')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/github_footer.png)](https://ropensci.org)
