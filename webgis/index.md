---
title       : Web GIS
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

# GIS on the Internet

---

## Interactive mapping

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


* [NYT college football fan map](http://www.nytimes.com/interactive/2014/10/03/upshot/ncaa-football-map.html)
* For discussion: 
 + What is 'interactive' about this map?  
 + How does this map differ from a static map?  Is it better?  
 


---

## Web 2.0 and geographic information

* __Web 2.0__: emphasis on user-generated content and the web as a platform
* Internet content not simply top-down, but highly interactive
* Demand for applications that allow users to interact with (and create their own!) geographic data

---

## Examples of Web 2.0

* [Google Maps](http://maps.google.com)
* [OpenStreetMap](http://www.openstreetmap.org/#map=5/51.500/-0.100)
* [Mapping Twitter data](http://srogers.cartodb.com/viz/98cb3c42-4d7b-11e4-b811-0e4fddd5de28/embed_map)

---

## Web maps vs. GIS

* For discussion: can an internet mapping application be considered a GIS?  

---

## Web GIS

* Designed to simulate desktop GIS experience in a browser or on a mobile device
* However, whereas a desktop GIS is geared toward a trained user (you all!), internet GIS applications should be designed for the average Internet user

---

## Client/server architecture

* **Web server** hosts and serves sites and data to be consumed by **web clients** (e.g. your browser)

<img src=assets/img/client-server.jpg style="width: 700px" />

<span class="footnote">Source: Fu and Sun (2011)</span>

---

## The distributed GIS process

<img src=assets/img/web-gis.jpg style="width: 700px" />

<span class="footnote">Source: Fu and Sun (2011)</span>

---

## GIS servers

* Server: machine that hosts and "serves" GIS services to clients
* GIS server software: ArcGIS for Server, GeoServer, MapServer (open source)

<img src=assets/img/gis-server.jpg style="width: 700px" />

<span class="footnote">Source: Fu and Sun (2011)</span>

---

## Geospatial web services

* **Map services**: geospatial data (maps) serves as images (e.g. JPEG, PNG)
 * **Tiled map service**: maps generated from pre-made "tiles" stored in server's cache
* **Feature services**: geospatial data served as vectors
 * Allow users to create, edit, delete, and query data


---

## Tiled mapping

* To speed browsing, web maps often display map services as "tiles"
* Tiles are defined by their **zoom level** and **coordinates**

---

## How tiled mapping systems work

<img src=assets/img/tiled-mapping.png style="width: 700px" />

<span class="footnote">Source: Bing Maps</span>

---

## The Web Mercator coordinate system

* Web mapping systems commonly use a variant of the Mercator projection
* Mercator used because of its **conformal** and **cylindrical** properties

---

## Web map design

* Principles of web map design: 
 * Generalization
 * Scalability
 * Minimalism

---

## Generalization

* Important to consider purpose of your map when selecting resolution of your data

<img src=assets/img/general.png style="width: 800px">


---

## Generalization

* At small scales, lots of detail can be unnecessary and computationally burdensome 
* Large feature services can be very slow in web maps
* When building applications, ask yourself: how much detail do I need?

* In ArcGIS: look for the "Generalization" toolset in the "Cartography" toolbox

---

## Scalability

Example: [NPR Census Map](http://www.npr.org/censusmap)

---

## Minimalism (when appropriate)

<img src=assets/img/clutter.png style="width: 800px">

---

## Minimalist solution

<iframe width="800" height="500" src="https://dl.dropbox.com/s/z7zl839nb18gdgf/xs_customers2.html" frameborder="0" allowfullscreen></iframe>

---

## Principles of public-facing interfaces

From Brian Timoney - web maps should be:

* Fast
* Intuitive
* Informative
* Fast

[More from Brian Timoney on why map portals don't work](http://mapbrief.com/2013/02/05/why-map-portals-dont-work-part-i/)

---

## Cloud computing

* Computing services that are served remotely over a network; not on an in-house physical server
* Types: 
 * Infrastructure as a Service (IaaS)
 * Platform as a Service (PaaS)
 * Software as a Service (Saas)


---

## Cloud computing

* Benefits: 
 * Pay-as-you-go model
 * Less need to maintain/replace server hardware
 * Efficiency (less power, air conditioning, space, etc.)
* Drawbacks: 
 * Privacy concerns
 * Vendor constraints

---

## Examples of cloud computing

<img src=assets/img/cloud.png style="width: 700px" />

---

## ArcGIS Online

* Subscription-based service; links with ArcGIS suite of products
* Hosts data as tiled or feature services
* Limitations: 
 * Can only display a maximum of 1000 features
 * Confusing pricing structure
* Link: http://www.arcgis.com

---

## Tutorial: ArcGIS Online

* Hundreds of World Regional Geography students at TCU have learned to make web maps with ArcGIS Online
* Let's check it out!

---

## CARTO

* Spatial database in the cloud
* 'Freemium' service; free to get started, more storage costs more money
* Powerful interface for running queries, visualizing your data; dashboard capabilities
* Link: http://www.carto.com

---

## Mapbox/Mapbox Studio

* Mapbox Studio: Interactive design tool for web cartography; generates _vector tiles_
* 'Freemium' service; will store certain amount of data for free, costs money for more storage
* Link: http://www.mapbox.com


