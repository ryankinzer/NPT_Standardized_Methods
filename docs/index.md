--- 
title:  |
  ![](NPT.png){width=1in} ![](DFRM.png){width=1in}
  
  Standardized Calculations for Snake River Basin Chinook Salmon and Steelhead High Level Indicators and Metrics
author:
  - Ryan N. Kinzer, Clark B. Watry, and Tyler T. Stright
date: '2021-05-06'
output:
  pdf_document2: default
  word_document2: default
description: This document describes the methodology used to calculate high level
  indicators and metrics for fish populations monitored by the Nez Perce Tribe using
  standardized techniques and calculations.
documentclass: book
link-citations: yes
bibliography:
- book.bib
- packages.bib
site: bookdown::bookdown_site
biblio-style: apalike
# use
#bookdown::render_book("index.Rmd", output_format = bookdown::word_document2(toc = TRUE))
#bookdown::render_book("index.Rmd", output_format = bookdown::pdf_document2(toc = TRUE))
#bookdown::render_book("index.Rmd", output_format = bookdown::html_document2(toc = TRUE, split_by = 'none'))
---

# Preface {#sec:preface}

The Department of Fisheries Resources Management (DFRM) Research Division utilizes four technical teams to develop and standardize our analytical methodology and to guide data management. Each team consists of professional staff representing each monitoring and evaluation project and are responsible for determining how to collect, summarize, and analyze Chinook Salmon and summer steelhead data using the best available science. The Adult Technical Team (ATT) examines data collected from spawning ground surveys, picket weir operations and in-stream PIT tag detection systems with a focus on indicators of abundance, life history characteristics and population productivity. The Juvenile Technical Team (JTT) is responsible for summarizing data collected from rotary screw traps, beach seining, underwater snorkeling and in-hatchery monitoring. Metrics discussed by the JTT include abundance, survival and life history characteristics of various juvenile life-stages. The adult and juvenile technical teams are comprised of biologists and project leaders supervising data collection and summarization, and the calculation of performance measures for each research project. The third technical team consists of Research Division management and project leader staff who focus on the best methods for data analysis and hatchery effectiveness monitoring, or implementing adaptive management. Data acquisition, storage, and processing is completed by the forth team, Data Management, who are responsible for creating accurate and efficient tools to assist project staff and fish managers answer their data related questions.

The main objective of this document is to describe the methodology used to calculate high level indicators and metrics for fish populations monitored by the Nez Perce Tribe (NPT) using standardized techniques and calculations. NPT managers and researchers preferred a single, standardized, and parsimonious method for all monitored areas to maintain transparent, reproducible, and comparable data and results across project areas and fish populations. Standardized methods and calculations for each indicator and metric were collaboratively chosen by Research Division projects and technical teams as the best method for representing all monitored fish populations. Although all reasonable attempts to avoid different methods for indicator and metric calculations were made, in some instances multiple methods were necessary to accurately capture true population responses due to existing differences in management strategies or fish population complexity. In those cases, population differences and necessary methods used in each location are clearly identified. Additionally, different calculations and techniques are often needed to capture rare annual events that necessitate more complex methods. In these cases, annual progress reports will document and detail methodologies used to calculate indicators and metrics that differ from the standard approaches described within this document.

<!--A second objective of this document, is to serve as a manual and training guide to the division's approved and agreed upon calculations for program evaluations and population monitoring. Throughout the chapters of the book, example calculations are provided using the **R** statistical programming language, and packages **cdmsR**, **cuyem** and **fisheR** available from [https://github.com/ryankinzer](https://github.com/ryankinzer). These three packages were developed explicitly for accessing, summarizing and calculating indicators and metrics following the methods identified in this document and approved by Research Division projects and technical teams. A companion **R** training workshop that follows examples shown in the book is also available at [https://rstudio.cloud](https://rstudio.cloud) with invitation.-->

The contents of this document are the result of countless hours and many discussions between NPT DFRM Research Division staff during division meetings, technical team meetings, phone calls and impromptu discussions. Our staff's expertise and knowledge of salmon and steelhead data collection and analysis is extensive, and without them and their contributions this work and approach would not be possible. Thank you to all those involved for being patient and helping to find a better path forward for method reproducibility and efficiency through compromise. 

Please reference the full breadth of this work using the following citation:

Kinzer, Ryan, N., Clark B. Watry, Tyler T. Stright. 2021. *Standardized Calculations for Snake River Basin Chinook Salmon and Steelhead High Level Indicators and Metrics*. Nez Perce Tribe. https://ryankinzer.github.io/NPT_Standardized_Methods/.


