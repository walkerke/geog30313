---
title       : Geocoding and GIS modeling
subtitle    : August 25, 2014
author      : Kyle Walker
job         : Texas Christian University
framework   : landslide        # {io2012, html5slides, shower, dzslides, ...}
landslide: 
  theme: tcu
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

# Geocoding and GIS modeling

---

## Geocoding

<style>
h3 {
font-size: 1.5em;
}

body {
font-size: 1.5em;
}

p, ul, li {
font-size: 100% !important;
}

</style>

* Process of transforming a _description of a location_ to coordinates on the Earth's surface

<img src=assets/img/geo1.png style="width: 800px">

---

## Geocoding

* __Locational description__ matched to a reference dataset
* Types of geographic references:
 + Street centerlines
 + Parcel data
 + Composite locators
 



---

## Street centerlines

<img src=assets/img/centerlines.png style="width: 800px">

---

## Street centerlines

<img src=assets/img/centerlines2.png style="width: 800px">

---

## Parcel data

<img src=assets/img/parcel.png style="width: 800px">

---

## Building an address locator

<img src=assets/img/locator.png style="width: 700px">

---

## Geocoding services

* ArcGIS Online: composite locator available through ArcGIS for Desktop w/organizational subscription
* Google: Limit of 2500 addresses/day without subscription
* Others: Bing, Yahoo, many more.

---

## Which geocoder to use?

<img src=assets/img/which.png style="width: 800px">

---

## Geocoding error

<img src=assets/img/error.png style="width: 800px">

---

## GIS modeling

* Some sort of description or process of spatial phenomena
* Types: 
 + Simple spatial models
 + Cartographic models



---

## Simple spatial models

<img src=assets/img/simple.png style="width: 800px">

---

## Cartographic modeling

<img src=assets/img/suitability.gif style="width: 800px">

---

## Suitability analysis

<img src=assets/img/suitability.png style="width: 800px">

---

## Weighted overlay

* Assignment of ranks, or weights, to inputs based on their relative importance to the model

<img src=assets/img/weighted.gif style="width: 500px">

---

## Cellular automata models

<img src=assets/img/cellular.png style="width: 800px">

---

## Agent-based models

* "Agents" move around a digital landscape based on a set of rules or environmental factors
* Used to simulate crowd behavior, animal behavior, transportation networks
* [Example: research from Dr. Paul Torrens, University of Maryland](http://www.geosimulation.org/stampede.htm)

---

## ArcGIS ModelBuilder

* Graphical interface for building geoprocessing models
* Can be configured as "tools" for future use, or exported as scripts

---

## ModelBuilder elements

<img src=assets/img/model1.png style="width: 800px">

<span class="footnote">Image credit: Esri</span>

---

## Model iteration

* Iterators allow you to run the model for every element of a given type (feature class, workspace, table, etc.)

<img src=assets/img/model2.png style="width: 800px">

<span class="footnote">Image credit: Esri</span>

---

## Inline variable substitution

* Model inputs can be used as variables by enclosing them in percentage signs (%)

<img src=assets/img/model3.png style="width: 600px">

<span class="footnote">Image credit: Esri</span>

---

## Model parameters and tool development

<img src=assets/img/model4.png style="width: 600px">

<span class="footnote">Image credit: Esri</span>

















