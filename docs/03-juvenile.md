# Juvenile Abundance and Life History {#chap:juvenile}

The DFRM Research Division collects and summarizes juvenile data collected from two field methods to calculate juvenile abundance, and life history metrics identified by the AHSWG [@beasley2008recommendations] and described in CA [DES](http://www.streamnet.org/coordinated-assessments-des/). Data is collected from outmigrating juvenile Chinook Salmon and steelhead using rotary screw trap methods and beach seining techniques. Detailed descriptions of field activities and data collection protocols can be found at [https://www.monitoringresources.org](https://www.monitoringresources.org); [Rotary Screw Traps](https://www.monitoringresources.org/Document/Protocol/Details/2242) and [Beach Seining](https://www.monitoringresources.org/Document/Protocol/Details/2243). Rotary screw trap and seining data are stored and accessed from the Tribe's [CDMS](https://npt-cdms.nezperce.org/), and the regional PIT-tag data repository maintained by Pacific States Marine Fisheries Commission, [PIT Tag Information System (PTAGIS)](https://ptagis.org).

The summary and analysis methods used to calculate juvenile AHSWG performance measures and CA indicators and metrics are described below and provide a consistent and comparable approach across all NPT juvenile monitoring locations. In some cases, calculation methods are different for the various species or runs, or across the landscape and at different spatial scales. Necessary differences in methodology exist because of local management, available data, or to better meet monitoring objectives. In most cases the calculation method and equations are the same; however, the input variables are summarized differently and at the spatial scale meeting the objective. Any deviations in our described methods due to species, run, location or spatial scale are described in annual reports when conditions necessitate.


<!--## Index of Juvenile Abundance {#sec:juvdensity}

Juvenile density is estimated using snorkel surveys and underwater fish observations. Techniques and methods used for estimating fish density from underwater observations are described in @petrosky1985idaho, @hankin1988estimating, @thurow1994underwater and more recently in @apperson2015field. Survey transects were chosen at random and divided into strata containing multiple sampling sites based on channel and habitat type. Channel types include confined, steep gradient reaches (Type B), and lower gradient, meandering reaches (Type C) [@rosgen1985stream]. Each transect includes one or more habitat strata and is confined at both the upper and lower boundaries by a hydraulic control which is defined as a change in habitat type [@van1983sampling; @mccain1992comparison]. Four habitat strata are used: pool, riffle, run, and pocket water. Pool, riffle, and run units correspond to the definitions of @bisson1982system. Pocket water is predominantly high gradient flow with numerous protruding boulders or other large obstructions that create scour holes (pockets) or eddies [@mccain1992comparison].

Surveys are limited to periods of the day when fish are most active and visibility is best for observation. To ensure adequate light surveys are limited to between 1000 and 1800 hours. Surveys are also limited to periods when water temperatures are above 10 degrees Celsius, with the exception of streams that remain colder for the entire day [@thurow1994underwater]. Underwater visibilities are measured to determine the most efficient fish viewing distance between snorkelers. To measure underwater visibility, a Secchi disk or similar object is placed in the water. A submerged snorkeler observes the Secchi disk while drifting downstream until they are no longer able to observe the Secchi disk or object. The distance between the Secchi disk or object and the last point it is observed is measured as the underwater visibility. Snorkelers are then arranged across the entire stream at distances appropriate for visibility conditions. All Salmonids are identified, counted, and total length estimates are recorded. Presence of non-Salmonids is noted. The length and width of sample sites are measured to determine the sample area. Observed fish densities (number per 100 m$^2$) and index abundance estimates are calculated for each stratum as described in [@nemeth1996idaho].
-->
## Juvenile Emigrant Abundance {#sec:juvenileabundance}

Juvenile abundance is estimated from data collected at rotary screw traps [@volkhardt2007rotary] based on brood year for emigrating natural-origin spring/summer Chinook Salmon and migration year for natural-origin steelhead. Abundance estimates for spring/summer Chinook Salmon are made at four life stages or trapping seasons and then combined for a brood year total. The four spring/summer Chinook Salmon life stages include: (1) young of the year (YOY), (2) parr, (3) presmolt, and (4) smolt. Spring/summer Chinook Salmon life stages are designated by age and seasonal trapping dates; YOY are newly emerged juveniles collected from January 1 - June 30, parr are collected from July 1 - August 31, presmolt are collected from September 1 - December 31, and smolt are collected from January 1 - June 30 at age 1. Estimates for YOY are often unavailable due to low trapping numbers whereby when YOY catch is low the captured fish are included in the parr life stage. Trapped steelhead vary in fresh-water age when migrating downstream precluding brood year abundance estimates similar to spring/summer Chinook Salmon. Instead steelhead abundance is organized into assumed year of migration to LGD and split into fall and spring trapping seasons.

Emigrant abundance is estimated similarly for each spring/summer Chinook Salmon life stage and fall or spring steelhead trapping season. Abundance is estimated using a stratified Bailey mark-recapture model [@bailey1951estimating] with precision estimates calculated using bootstrapping methods [@mooney1993bootstrapping] developed by @steinhorst2004confidence. Stratifying the abundance estimator allows for heterogeneous capture probabilities across life stages or trapping seasons. Trapping seasons are stratified into seven day periods to account for changing fish behavior and environmental trapping conditions. @steinhorst2004confidence recommended at least seven recaptures in each strata, if this condition is not met for each seven-day period then adjacent strata or additional days are included until at least seven recaptures are achieved. The Bailey estimator uses three inputs for each seven-day weekly strata ($w$) to estimate life stage ($j$) juvenile abundance ($\hat{N}_j$): (1) unmarked captures ($c_w$), (2) marked releases ($m_w$), and (3) marked recaptures ($r_w$) [@steinhorst2004confidence]. <!--All calculations are completed with the **R** statistical programming language [@R-base] and the **cuyem** package [@cuyem2021]. -->

\begin{equation}
			\hat{N}_j = \sum_{w=1}^{W} \frac{c_w(m_w+1)}{(r_w+1)} (\#eq:bailey)
\end{equation}

Variance estimates and confidence intervals for juvenile abundance are given using bootstrap techniques; assuming unmarked capture and recaptures are independent random variables from binomial distributions [@steinhorst2004confidence],

\begin{eqnarray}
			c_w \sim Binomial(\hat{N}_w,\hat{p}_w) \\
			r_w \sim Binomial(m_w,\hat{p}_w)
\end{eqnarray}

where estimates of strata abundance ($\hat{N}_w$) and capture probabilities ($\hat{p}_w = \frac{r_w}{m_w}$) are substituted for the binomial parameters [@steinhorst2004confidence]. Total juvenile abundance ($\hat{N}_J$) emigrating past the rotary screw trap is given by summing weekly ($w$) strata across all juvenile life stages.

## Juvenile Survival {#sec:juvsurvival}

Survival of migrating Chinook Salmon and steelhead from release (i.e., rotary screw trap, beach seining, or hatchery release) to Lower Granite Dam is estimated using the Survival Under Proportional Hazards (SURPH) juvenile survival program [@smith1994surph; @skalski1998use]. The SURPH program estimates survival probabilities ($\phi_j$) and detection probabilities ($\rho_j$) using a Cormack-Jolly-Seber (CJS) model [@cormack1964estimates; @jolly1965explicit; @seber1982estimation]. Survival estimates to LGD are reported for each natural- and hatchery-origin release group. Natural-origin release groups include all PIT tagged fish within a single life stage/trapping season and migration year, in order to pair with juvenile abundance estimates (\@ref(sec:juvenileabundance)). Survival is estimated from subsequent tag detections at hydrosystems and other in-river facilities obtained from the online [PTAGIS](https://www.ptagis.org) database. SURPH's companion program PITPRO [@westhagen2007pit] is used to develop capture history files with the four lower Snake River and four lower Columbia River dams, and the estuary towed array as potential tag detection locations. The PITPRO capture history file output is then input into SURPH to generated CJS estimates with associated 95% profile likelihood confidence intervals [@smith1994surph; @skalski1998use].


## Smolts Equivalents {#sec:smolts}

Estimated smolt equivalents ($\hat{N}_{S}$) represent the abundance of fish surviving to LGD from the total brood year or migratory year abundance estimate or hatchery release number.

\begin{equation}
			\hat{N}_{S} = \sum_{j=1}^{J}\hat{N}_j * \hat{\phi}_j
\end{equation}

Smolt equivalents are derived by multiplying each life stage specific survival from release location to LGD ($\hat{\phi}_j$; \@ref(sec:juvsurvival)) by the life stage abundance estimate ($\hat{N_j}$; \@ref(sec:juvenileabundance)). Life stage specific smolts reaching LGD is then summed across all life stages ($J$) to estimate a total brood year (spring/summer Chinook Salmon) or migration year abundance (steelhead) of smolts at LGD.
		
Using common variance properties [@casella2002statistical] precision for total smolts at LGD becomes

\begin{equation}
			Var(\hat{N}_{S}) = \sum_{j=1}^{J} ( \hat{N}_j^2 Var(\hat{\phi}_j) + \hat{\phi}_j^2 Var(\hat{N}_j) + Var(\hat{N}_j)Var(\hat{\phi}_j)).
\end{equation}

<!--## Juvenile Survival to First Mainstem Dam {#sec:totaljuvsurvival}

Aggregated juvenile survival ($\Phi$) is given by the ratio of total juveniles surviving to Lower Granite Dam ($\hat{N}_S$; \@ref(sec:smolts)) to juvenile emigrant abundance ($\hat{N}_J$; \@ref(sec:juvenileabundance)).

\begin{equation}
			 \Phi = \frac{\hat{N}_S}{\hat{N}_J}
\end{equation}
		 
An approximate variance estimator, given by the delta method [@casella2002statistical], becomes,

\begin{eqnarray}
			Var(\Phi) = \bigg(\frac{1}{\hat{N}_J^2}\bigg)Var(\hat{N}_S) + \bigg(\frac{\hat{N}_S^2}{\hat{N}_J^4}\bigg)Var(\hat{N}_J).
\end{eqnarray} -->

## Age-at-Emigration {#sec:ageemigration}

The age of juveniles migrating past rotary screws is estimated differently for spring/summer Chinook Salmon and steelhead. Generally, emigration age and the proportion of spring/summer Chinook Salmon migrating past rotary screw traps is determined solely from the abundance of fish within each life stage or trapping season, and non-overlapping age and size classes. In contrast, steelhead migrants passing rotary screw traps are often comprised of different age groups with overlapping size classes. 

Spring/summer Chinook Salmon age-at-emigration is reported as the proportion of the total brood year abundance migrating as age 0 YOY, age 1 parr, age 1 presmolt, and age 1 smolt. Each life stage and age proportion is calculated by dividing life stage abundance by the total brood year abundance. Additionally, age 2 juveniles determined from fork length and captured after the smolt season ends (i.e., June 30th) are included in brood year summaries when they are observed in the trap catch. 

Steelhead age-at-emigration is reported as the proportion of age groups caught during each fall and spring trapping season. Seasonal age proportions are estimated from scales collected from a random sample of trapped fish. Scales are collected from between the posterior edge of the dorsal fin and anterior edge of the anal fin directly above the lateral line [@scarnecchia1979variation; @knudsen1985variation]. Collected scales are then prepared and read following procedures outlined in @seelbach1984interpretation and @davis1985steelhead. Scales are read by multiple readers with a final age determination and error rate calculated using methods described by @beamish1981method and @beamish1983forgotten.

## Size-at-Emigration {#sec:sizeemigration}

The size at emigration for Chinook Salmon, and steelhead is described by reporting the distribution of fork lengths collected from a random sample of individuals. Distributions are presented using common summary statistics (e.g., means, medians, standard deviation) or with graphics (e.g., histograms, boxplots) to illustrate the full range and variability in fork lengths. Size-at-emigration is reported separately for each life stage or trapping season group, or split into finer temporal scales, such as, weeks or months.

Growth rates during a trapping season, or across the full migratory year are determined with a @von1938quantitative growth model. Growth models are fit following the @beverton1957dynamics parameterization to better assess size-at-emigration, and growth of juvenile spring/summer Chinook Salmon and steelhead captured at rotary screw traps. Growth model coefficients are estimated with a non-linear least squares method and is represented as, 

\begin{equation}
  l_t = L_{\infty} (1-e^{(-K(t-t_0))}). (\#eq:vonbertalanffy),
\end{equation} 
 
where $l_t$ is the length of individuals at time $t$, $L_\infty$ is the asymptotic length or mean length at emigration, K is a growth coefficient and $t_0$ is a coefficient for time when length equals zero.  Time is typically represented as the number of months that occur between egg deposition and capture at the rotary screw trap.


## Condition of Juveniles at Emigration {#sec:conditionfac}
The mean condition factor ($\bar{K}$) is calculated for each life stage and trap season migrant group released at rotary screw traps, and hatchery release groups using Fulton???s condition factor [@anderson1996length].

\begin{equation}
  K_i = (w_i / l_i^3)*100,000 (\#eq:condfactor)
\end{equation}

Where $K_i$ is the condition factor for individual $i$, $w_i$ is weight, and $l_i$ is length measured from a random sub-sample of juveniles collected from each release group. Weight is measured to the nearest 0.1 g and length is measured to the nearest 1.0 mm from the snout tip to the fork in the tail.  

## Emigration Timing {#sec:emigrationtime}
Juvenile emigration timing is described for spring/summer Chinook Salmon and steelhead using empirical cumulative distribution functions and rotary screw trap data. Emigration timing is summarized and then reported as the date of passage for 1, 10, 50, 90 and 100 percent of individuals within each life stage or trap season, or reported graphically. Daily emigration numbers and timing are calculated by expanding unmarked trap catch with the weekly trap efficiency estimated during juvenile abundance estimation (\@ref(sec:juvenileabundance)). 

## Main Stem Arrival {#sec:mainstemarrival}
Main stem arrival timing at LGD is calculated using PIT tag interrogation data queried from [PTAGIS](https://www.ptagis.org) for individual fall and spring/summer Chinook Salmon and steelhead PIT-tagged during beach seining, rotary screw trapping, and hatchery marking activities. Arrival timing is described similarly to emigration timing with graphical displays of the empirical cumulative distribution functions, and the dates of 1, 10, 50, 90 and 100 percent of individuals arriving to LGD. Summaries are provided for each natural-origin life stage or trapping season, and hatchery-origin release groups. 

Additionally, we report the proportion of emigrants passing LGD prior to the start of fish collections at juvenile by-pass facilities for transportation, and increased spring and summer spill operations. Collections for transportation (i.e., barging or trucking) at juvenile bypass facilities located at the lower Snake River dams typically begin during April. We assume fish arriving prior to the transportation period are not transported, and those fish arriving on the start date or later would be transported if observed in by-pass facilities at any of the transport dams (Lower Granite Dam, Little Goose Dam and Lower Monumental Dam), unless the observed PIT tag is designated for return-to-river.
