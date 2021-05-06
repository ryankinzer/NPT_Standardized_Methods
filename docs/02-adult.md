# Adult Abundance and Life History {#chap:adult}

The DFRM Research Division collects and summarizes adult data collected from three field methods to calculate adult abundance, and life history metrics identified by the AHSWG [@beasley2008recommendations] and described in CA [DES](http://www.streamnet.org/coordinated-assessments-des/). Data is collected for returning Chinook Salmon and steelhead using spawning ground surveys, floating and fixed panel picket weirs, Lower Granite Dam (LGD) adult sampling, and instream PIT-tag detection systems (IPTDS). Detailed descriptions of field activities and data collection protocols can be found at [https://www.monitoringresources.org](https://www.monitoringresources.org); [Spawning Ground Surveys](https://www.monitoringresources.org/Document/Protocol/Details/2255), [Picket and Floating Panel Weirs](https://www.monitoringresources.org/Document/Protocol/Details/2247), [Lower Granite Dam Adult Sampling](https://www.monitoringresources.org/Document/Protocol/Details/88), and [Instream PIT-tag Detection Systems](https://www.monitoringresources.org/Document/Protocol/Details/2262). Spawning ground survey data, fall Chinook Salmon run-reconstruction estimates and IPTDS abundance estimates generated from Lower Granite Dam adult sampling are stored and accessed from the Tribe's [CDMS](https://npt-cdms.nezperce.org/), while weir trapping data is obtained from the LSRCP [FINS database](https://finsnet.org).

The summary and analysis methods used to calculate adult AHSWG performance measures and CA indicators and metrics are described below and provide a consistent and comparable approach across all NPT adult monitoring locations. In some cases, calculation methods are different for the various species or runs, or across the landscape and at different spatial scales. Necessary differences in methodology exist because of local management, available data, or to better meet monitoring objectives. For instance we may report a hatchery fraction at different spatial scales; above the weir, below the weir, total tributary, or for the entire population. In most cases the calculation method and equations are the same, however, the input variables are summarized differently and at the spatial scale meeting the objective. Any deviations in our described methods due to species, run, location or spatial scale are described in annual reports when conditions necessitate. 

## Index of Spawner Abundance {#sec:reddcount}

The sum of Chinook Salmon and steelhead redds observed in surveyed tributaries and populations provide an index of returning fish abundance. Redd counts predate other abundance estimation methods, thereby providing fish managers a time-series going back to 1957 [@hassemer1992manual] to track abundance trends, and they are used for a primary index of abundance in 5-year Endangered Species Act (ESA) status assessments [@matthews1991status; @mcclure2005interior]. To meet project evaluation and population monitoring objectives, and to provide necessary inputs for other metric calculations, observed redds are enumerated into five spatial locations: (1) total population redd count ($R_T$), (2) an index area only redd count ($R_I$) (3) redds upstream of an adult monitoring site ($R_U$), (4) redds downstream of an adult monitoring site ($R_D$), and (5) redds upstream of a juvenile rotary screw trap ($R_S$).






## Hatchery Fraction {#sec:hatcheryfraction}

Two variants of hatchery fraction are calculated and defined as; 1) the proportion of adult hatchery-origin fish escaping to a weir prior to any fish removals due to management actions ($pHOF$), and 2) the proportion of adult hatchery-origin fish on the spawning grounds and available to participate in natural spawning ($pHOS$).

Spring/summer Chinook Salmon $pHOF$ is estimated using weir trapping data and the maximum likelihood estimator (MLE). The MLE is then calculated as the number of hatchery-origin returns ($n_H$) divided by the total number of known origin returns ($n_O$) observed at the weir. The proportion of hatchery-origin spawners, $pHOS$, is calculated similarly as $pHOF$ but uses weir trapping data and those fish released for natural spawning, or carcasses collected during spawning ground surveys to enumerate $n_H$ and $n_O$. 

<!--In some spring/summer Chinook Salmon populations broodstock collection and weir management can effect hatchery fractions upstream and downstream of the weir. In these populations, $pHOS$ is stratified into upstream and downstream spatial locations. Upstream $pHOS$ is estimated with carcasses and weir returns are used to estimate downstream $pHOS$.-->

\begin{equation}
			\hat{pHOF} = \frac{n_H}{n_O}
			(\#eq:pHOF)
\end{equation}

Uncertainty is estimated for both variants by substituting $pHOS$ for $pHOF$ within the variance estimator. Variance is estimated by assuming the number of hatchery origin fish ($n_H$) are independent random variables from a binomial distribution, and confidence intervals are estimated with the Wilson-Score approach [@agrestiCategoricalDataAnalysis2003].

\begin{equation}
 Var(\hat{pHOF}) = \frac{\hat{pHOF}(1-\hat{pHOF})}{n_O}.
 (\#eq:var-pHOF)
\end{equation}

Fall Chinook Salmon and steelhead $pHOF$ and $pHOS$ definitions are similar to spring/summer Chinook Salmon definitions; although, fall Chinook Salmon calculations use run-reconstruction data for fish escaping to Lower Granite Dam [@youngSnakeRiverHatchery2020]. Fall Chinook Salmon hatchery fraction, $pHOF$, is calculated from run-reconstruction estimates of fish returning to the dam, and $pHOS$ is determined from run-reconstruction estimates of fish released above the dam. Steelhead $pHOF$ and $pHOS$ is assumed equal because steelhead are not removed at weirs and their life-histories do not facilitate carcass collections. Both steelhead hatchery fraction variants are estimated from fish escaping to weirs.

## Proportion Female {#sec:percentfemale}

Two variants of female proportion exist for Chinook Salmon and steelhead: (1) proportion of females escaping to a weir ($f^W$), and (2) proportion of females on the spawning grounds ($f^S$). To estimate both variants of female proportion we assume the number of observed females ($n_f$), either from weir observations or carcass collections, are an independent random variable from the binomial distribution with known sex carcasses ($n_s$). Then, MLE, variance and confidence interval calculations for $\hat{f}$ are similar to hatchery fractions equations (\@ref(eq:pHOF)) and (\@ref(eq:var-pHOF)) as follows:

\begin{align}
\hat{f} &= \frac{n_f}{n_s} (\#eq:percentfemale) \\ 
Var(\hat{f}) &= \frac{\hat{f}(1-\hat{f})}{n_s}. (\#eq:percentfemalevariance)
\end{align}

Both female proportion variants can be calculated for Chinook Salmon if weir trapping data (LGD run-reconstruction estimates for fall Chinook Salmon) and carcass collection data are available. Again, due to the lack of steelhead carcasses collected and the fact that no fish are removed at DFRM steelhead weirs, we assume $f^W = f^S$.

<!--In some monitored populations with fish removed at a weir it might be necessary to stratify female proportion into upstream and downstream locations relative to the weir site. Stratifying female proportions allows for a weir management correction to be applied in order to estimate a population level female proportion. Upstream ($\hat{f}_U$) and downstream ($\hat{f}_D$) female proportions are calculated following equations \@ref(eq:percentfemale) and \@ref(eq:percentfemalevariance) and summarizing input variables into upstream and downstream areas ($n_{U,f}$, $n_{U,s}$, $n_{D,f}$, $n_{D,s}$).-->

## Pre-spawn Mortality {#sec:prespawn}

The proportion of available spawners dying before egg deposition and fertilization is calculated for female Chinook Salmon carcasses collected during spawning ground surveys. Similar to hatchery fraction and proportion female, we assume the number of observed female prespawn carcasses follow a binomial distribution. Then, the estimated proportion of prespawn mortality ($\hat{p}$) is given by the equation

\begin{equation}
\hat{p} = \frac{n_p}{n_{f,p}},
(\#eq:prespawn)
\end{equation}

where $n_p$ is the number of female carcasses with $\ge 25 \%$ egg retention, and $n_{f,p}$ is the total number of female carcasses with a prespawn egg retention determination. The variance of $\hat{p}$ is approximated using the delta method because the estimator is the ratio of two random variables ($n_{f,p}$ and $n_p$) [@casella2002statistical]. Using the delta method the approximate variance estimator for female prespawn mortality becomes

\begin{equation}
Var(\hat{p}) = \bigg(\frac{\hat{p}(1-\hat{p})}{n_{f,p}}\bigg) + \bigg(\frac{n\hat{f}n_p^2(1-\hat{f})}{n_{f,p}^4}\bigg).
(\#eq:var-prespawn)
\end{equation}

## Adult Abundance {#sec:abundance}

Estimation of adult abundance depends on a variety of factors: species and run, the type of data collected, location of installed monitoring infrastructure, and validity of estimator assumptions. Data collection methods used to estimate abundance of returning adult Chinook Salmon and steelhead are classified as either low or high precision (e.g., coefficient of variations less than 15\%) following the @asms2010. Low precision adult monitoring refers to streams with adult abundance metrics derived from spawning ground survey data only, or extrapolated from other streams (e.g., using probabilistic survey designs or regressions). High precision monitoring occurs in streams with adult abundance metrics derived from installed fish monitoring infrastructure. Adult monitoring infrastructure includes fall Chinook Salmon run-reconstruction methods [@young2013snake; @youngSnakeRiverHatchery2020], mark-recapture picket and floating weirs, 24-hour underwater sonar (DIDSON) and video weirs, or IPTDS.

Adult abundance is estimated as either the escapement of fish returning to a specific location (i.e., weir, IPTDS, tributary mouth) or as the spawner abundance. In this context, escapement is defined as the sum of all returning adults to the specified location: harvested fish, broodstock collections, adults removed for out-plants, or mortalities (e.g., weir mortalities, trap mortalities, prespawn mortality). Returning fish harvested in the tribal fishery is estimated by the DFRM Harvest Monitoring Program and fish harvested during state sportsman fisheries are estimated from IDFG and ODFW creel surveys. By contrast, spawner abundance is defined as the number of fish that participated in natural spawning (i.e., minus harvested fish, broodstock, prespawn mortality, etc.). 

### Fall Chinook Salmon - High Precision Monitoring {#sec:fall-runrecon}
Monitoring of adult fall Chinook Salmon returns is completed by sampling returning fish at Lower Granite Dam [@young2013snake]. Two data streams provide adult abundance information as fish ascend the ladder at Lower Granite Dam: (1) observational counting window, and (2) systematic sampling at the adult trap. Whereas the counting window only provides a census of fish ascending the ladder, while the trap provides origin, stock, and age composition from the examination of fish for marks/tags and the collection of biological tissues samples [@young2013snake].  Window counts require adjustments to account for biases caused by fallback and re-ascension, fallback without re-ascension, and night-time passage.  Window count adjustments are made by estimating the rate of each bias using PIT tag observations at Lower Granite Dam and previous tagged fish. Age and stock composition is estimated using trap data, collected biological samples, and results from parental based tagging [@steele2019parentage]. The abundance of each returning age and stock group is then estimated as the product of adjusted window counts and group composition. Uncertainty is estimated through bootstrapping and described by @young2013snake in more detail.

### Spring/summer Chinook Salmon and Steelhead - High Precision Monitoring {#sec:trib-escapement}
In most high precision monitored spring/summer Chinook Salmon and steelhead populations the location of infrastructure divides tributary spawning areas into two locations: upstream and downstream. In populations with divided spawning habitat, total escapement and spawner abundance is summed across an upstream and downstream abundance estimator. Methods for estimating upstream and downstream abundance for both species is described in detail below.

#### Upstream Abundance

##### Mark Recapture Weir {#sec:mark-recap}
Upstream abundance of spring/summer Chinook Salmon and steelhead in streams with picket and floating weirs is estimated with a bias adjusted Lincoln-Peterson mark-recapture estimator [@Chapman1951]. The adjusted estimator assumes the number of recaptures are random from known values of upstream abundance, unmarked captures, and total marked fish. The adjusted estimator accounts for the small sample size bias contained within the original Lincoln-Peterson estimator due to sampling without replacement [@Chapman1951]. The adjusted estimator requires four assumptions: (1) the population is closed, (2) fish do not lose their marks or tags, (3) marks and tags are correctly enumerated, and (4) individuals have equal probabilities of detection at either the first or second occasion [@Chapman1951]. 

In some years or streams, a violation of the equal probabilities of detection assumption occurs. When unequal probability of detection is known to exist, the adjusted Lincoln-Peterson estimator is stratified. Stratifying escapement estimates involves grouping fish based on individual characteristics (e.g., size, sex, origin) and allows for varying detection rates which yields a more precise and unbiased estimate of upstream abundance [@sarndal2003]. Stratification schemes are completed on a yearly, stream-by-stream basis, provided recapture sample sizes allow and observed detection rates necessitate. Most commonly, two strata are formed to better capture detection rates of smaller age-3 (i.e., jack) returns from larger adults. Following @Chapman1951, the stratified ($l$) MLE for upstream abundance ($\hat{N}_{U,l}$) and its variance becomes

\begin{align}
	\hat{N}_{U,l} &=\frac{(m_l + 1)(c_l + 1)}{(r_l + 1)} - 1 (\#eq:adjlincoln) \\
	Var(\hat{N}_{U,l}) &= \frac{(m_l + 1)(c_l + 1)(m_l - r_l)(c_l - r_l)}{(r_l + 1)^2(r_l + 2)},
	(\#eq:var-adjlincoln)
\end{align}

where $m_l$ is the number of marked or tagged (e.g., opercle punch, PIT-tag) fish released upstream of the weir, $c_l$ is the sum of unmarked and marked spring/summer Chinook Salmon carcasses upstream of the weir, or the observed unmarked and marked steelhead moving downstream at the weir. And $r_l$ is the number of marked spring/summer Chinook Salmon carcasses upstream of the weir, or downstream migrating steelhead observed at the weir. 

Confidence intervals around $\hat{N}_{U,l}$ are provided following recommendations in @krebs1999ecological and @seber1982estimation. Where, if $\ge 10 \%$ of fish in the second sample are marked (i.e., $\frac{r_l}{c_l}$) then a binomial distribution is used to create intervals. If the first criteria is not met, a Poisson distribution is used if $r_l < 50$, or a normal distribution if $r_l > 50$.

Total upstream abundance ($\hat{N}_U$) is then obtained by summing abundance and variance estimates across all $L$ strata. 

\begin{align}
\hat{N}_U &= \sum_{l=1}^{L} \hat{N}_{U,l} (\#eq:Nup)\\
Var(\hat{N}_U) &= \sum_{l=1}^{L} Var(\hat{N}_{U,l})
(\#eq:var-Nup)
\end{align}

A weir efficiency ($\hat{E}_l$) is obtained using $\hat{N}_{U,l}$ and the number of fish handled ($n_{w,l}$) and removed ($W_l$) at the weir.

\begin{align}
	\hat{E}_l = \frac{n_{w,l}}{\hat{N}_{U,l} + W_l}	
\end{align} 

Using the delta method [@casella2002statistical] the variance of the weir efficiency can be approximated as

\begin{equation}
	Var(\hat{E}_l) = \frac{n_{w,l}^2}{(\hat{N}_{U,l} + W_l)^4} \; Var(\hat{N}_{U,l}).
\end{equation}

##### In-stream Pit Tag Detection Systems
Spring/summer Chinook Salmon and steelhead escapement upstream of an IPTDS is estimated using the linked model outputs of the State-space Adult Dam Escapement Model (STADEM; See et al. 2021) and the Dam Adult Branch Occupancy Model (DABOM) described by @see2016 and @waterhouseBayesianNestedPatch2020. STADEM estimates the escapement of unique fish passing LGD using window counts, adult trap data and previously tagged fish detections [@see2016]. DABOM uses PIT-tags implanted in returning adult fish to LGD and later detected at IPTDS to estimate transitional probabilities to a specific location [@see2016]. The product of DABOM transition probabilities and STADEM escapement then form upstream abundance estimates ($\hat{N}_U$) for tributaries with IPTDS [@see2016]. 

#### Downstream Abundance
Estimating spring/summer Chinook Salmon tributary or population abundance downstream of high precision monitoring locations is completed using one of five available methods: (1) fish per redd, (2) female per redd, (3) adult per redd, (4) redd expansion, or (5) carcass expansion. The single best method is chosen for each population and adult return year based on the validity of estimator assumptions. The five downstream abundance estimators and their implied assumptions are described below.

##### Fish per Redd
Downstream abundance ($\hat{N}_D$) is estimated by multiplying redds downstream ($R_D$) of the monitoring location by an estimated fish per redd value. First, fish per redd is calculated by dividing upstream abundance ($N_U$) by the upstream redd count ($R_U$) shown in section \@ref(sec:fishperredd). Then, assuming redds are known without error the estimator and variance for downstream abundance becomes 

\begin{align}
	\hat{N}_{D} &= R_D\bigg(\frac{\hat{N}_{U}}{R_U}\bigg) \\
	Var(\hat{N}_{D}) &= \bigg(\frac{R_D}{R_U}\bigg)^2Var(\hat{N}_{U}). 
\end{align}

A valid estimate of downstream abundance using the fish per redd method requires the following assumptions:

1. all redds have equal detection rates upstream and downstream,
1. fish per redd values are equal upstream and downstream, and
1. fish constructing redds downstream do not move and become counted upstream.


##### Female per Redd 
A slight variant of the fish per redd method, uses estimated females per redd upstream of the monitoring location to expand redds downstream to obtain an estimated female abundance downstream ($\hat{N}_{D,F}$). This method is typically used when the proportion of females upstream is unequal to the proportion downstream; 

\begin{equation}
	\hat{N}_{D,F} = R_D\bigg(\frac{\hat{N}_{U,F}}{R_U}\bigg),
\end{equation}

where $\hat{N}_{U,F}$ is the estimate of females upstream using equation \@ref(eq:adjlincoln) stratified by female. Assuming the redd count is known without error the variance for female abundance downstream becomes

\begin{equation}
	Var(\hat{N}_{D,F}) = \bigg(\frac{R_D}{R_U}\bigg)^2Var(\hat{N}_{U,F}). 
\end{equation}

After estimating female abundance downstream, we then expand by the proportion of females ($f_D$) in the downstream area to calculate downstream abundance (i.e., a total male and female abundance).

\begin{equation}
	\hat{N}_{D} = \frac{\hat{N}_{D,F}}{\hat{f}_D} \label{eq.femaleperredd},
\end{equation}

where $\hat{f}_D$ is calculated using similar methods as those shown in \@ref(sec:percentfemale). Because the estimator is a ratio of random variables the delta method is used to approximate variance;

\begin{equation}
	Var(\hat{N}_{D}) = \bigg(\frac{1}{\hat{f}_D^2}\bigg)Var(\hat{N}_{D,F}) + \bigg(\frac{\hat{N}_{D,F}^2}{\hat{f}_D^4}\bigg)Var(\hat{f}_D).
\end{equation}

Three assumptions need to be met for the female per redd method to be valid:

1. all redds have equal detection rates upstream and downstream,
1. female per redd values are equal upstream and downstream,
1. females constructing redds downstream and not counted upstream, and
1. all carcass have the same probability of recovery.

##### Adult per Redd
Estimating abundance downstream with the adult per redd method uses another variant of the fish per redd method and the stratified adult/jack mark-recapture estimate from section \@ref(sec:mark-recap). First, adult abundance downstream ($\hat{N}_{D,A}$) is estimated by multiplying the number redds downstream by the ratio of upstream adults ($\hat{N}_{U,A}$) to redds upstream. 

\begin{equation}
	\hat{N}_{D,A} = R_D\bigg(\frac{\hat{N}_{U,A}}{R_U}\bigg)
\end{equation}

The variance estimate for adults downstream again assumes redds are known without error.

\begin{equation}
	Var(\hat{N}_{D,A}) = \bigg(\frac{R_D}{R_U}\bigg)^2Var(\hat{N}_{U,A}) 
\end{equation}

Once, an estimate of adults downstream ($N_{D,A}$) is made we estimate jacks downstream ($N_{D,J}$) using the ratio of adults to jacks observed at the weir ($\frac{n_{W,J}}{n_{A,J}}$) following,

\begin{equation}
	\hat{N_{D,J}} = \frac{\hat{N}_{D,A} \; n_{W,J}}{n_{W,A}}.
\end{equation}

The estimator of jack abundance downstream uses only one random variable $\hat{N}_{D,A}$ and the variance becomes,			
\begin{equation}
	Var(\hat{N}_{D,J}) = \bigg(\frac{n_{W,J}}{n_{W,A}}\bigg)^2Var(\hat{N}_{D,A}). 
\end{equation}

Finally, to calculate total abundance downstream using the adult per redd method we sum the downstream estimates for adults $\hat{N}_{D,A}$ and jacks $\hat{N_{D,J}}$. Five assumptions need to be met in order for the adult per redd method to be valid:

1. all redds have equal detection rates upstream and downstream,
1. adult per redd values are equal upstream and downstream,
1. adults constructing redds downstream are not counted upstream,
1. an equal movement probability to the monitoring site for jacks and adults, and
1. an equal trap efficiency for jacks and adults.

##### Redd Expansion

The redd expansion method estimates downstream abundance following the @chasco2014evaluating approach using redd count and carcass information collected downstream of the monitoring site. @chasco2014evaluating showed deterministically that redds equal the product of escapement ($N$), proportion of females in the population ($f$) and one minus prespawn mortality ($p$; \@ref(sec:prespawn)). Then, by solving the equation $R=Nf(1-p)$ for $N$, and substituting in estimates of female proportion and prespawn mortality an estimate of tributary escapement is obtained using only spawning ground survey data. 

Using the redd expansion method downstream abundance is estimated by

\begin{align}
\hat{N}_D = \frac{R_D}{\hat{f_D}(1-\hat{p_D})}, (\#eq:reddexpansion)
\end{align} 

where $R_D$ is the number of redds, $f_D$ is the estimated female proportion and $p_D$ is the estimated prespawn mortality downstream of the adult monitoring site calculated following sections \@ref(sec:percentfemale) and \@ref(sec:prespawn). The redd expansion estimator is unbiased provided the following four assumptions are met:

1. all redds are enumerated without error,
1. all females build exactly one redd,
1. all carcasses are available for recovery,
1. all carcasses have the same probability of recovery, and
1. prespawn mortality is equal for males and females.

Using the delta method and assuming redds are known without error, a variance approximation for estimated escapement ($\hat{N}_D$) from only spawning ground survey data becomes [@casella2002statistical],

\begin{equation}
	Var(\hat{N}_D) = \bigg(\frac{1}{(1-\hat{p}_D)^2}Var(\hat{S}_D)\bigg) + \bigg(\frac{\hat{S}_{D}^2}{(1-\hat{p}_D)^4}Var(\hat{p}_D)\bigg),
\end{equation}

where $\hat{S}_D$ is the estimate of tributary spawners downstream and $Var(\hat{S}_D)$ is the variance of spawners from section \@ref(sec:spawner). 

##### Carcass Expansion {#sec:carcass-exp}

The carcass expansion method requires the sum of all observed carcasses downstream of the adult monitoring site and stratified estimates of carcass recovery rates ($g_l$) using the upstream mark-recapture data. An estimated recovery rate ($\hat{g}_l$) for fish in strata $l$ is given by 

\begin{equation}
\hat{g}_l = \frac{r_l}{m_l},
\end{equation}

where $m_l$ is the number of marks released upstream of the monitoring location and $r_l$ is recaptured marks. Using the same assumption for estimating upstream abundance with the adjusted Lincoln-Peterson estimator, the variance of $\hat{g}_l$ becomes,

\begin{equation}
%uses hypergeometric
Var(\hat{g}_l) = \bigg(\frac{1}{m_l}\bigg)\bigg(\frac{c_l}{\hat{N}_{U,l}}\bigg)\bigg(1 - \frac{c_l}{\hat{N}_{U,l}}\bigg)
\bigg(\frac{\hat{N}_{U,l}-m_l}{\hat{N}_{U,l}-1}\bigg).
\end{equation}

Downstream abundance ($\hat{N}_{D,l}$) for strata $l$ is then given by expanding the number of carcasses ($n_{D,l}$) observed downstream by the carcass recovery rate found upstream.

\begin{equation}
	\hat{N}_{D,l} = \frac{n_{D,l}}{\hat{g}_l}
\end{equation}

The delta method approximates variance of downstream abundance as,

\begin{equation}
	Var(\hat{N}_{D,l}) = \bigg(\frac{n_{D,l}}{\hat{g}_l^2}\bigg)^2Var(\hat{g}_l).
\end{equation}

Of the five downstream estimators the carcass expansion method requires the fewest assumptions. Stratifying the recovery rate by individual fish characteristics allows for unequal detection rates and only requires one assumption be met:

1. carcass recovery rates are equal for individuals in strata $l$ upstream and downstream of the monitoring location. 

### Spring/summer Chinook Salmon - Low Precision Monitoring {#sec:lowprecision}

In spring/summer Chinook Salmon populations monitored only with spawning ground surveys, tributary abundance ($N_U + N_D$) is estimated using spawning ground survey data and the redd expansion equation \@ref(eq:reddexpansion). Total fish in the tributary is estimated using all redds observed ($R_T$), and tributary estimates of female proportion ($f$) and prespawn mortality ($p$). Harvest estimates are then added in to form total tributary escapement similar to equations \@ref(eq:trib-escapement) and \@ref(eq:var-weir-escapement). 

## Tributary Escapement

Total escapement to the weir and returning to the tributary in monitored streams is estimated by summing the appropriate groups of estimated fish; upstream and downstream abundance, tributary harvest ($\hat{H}_T$), and fish removed at the picket weir ($W$). 

Then, escapement to the weir ($\hat{N}_W$) is calculated as,

\begin{equation}
	\hat{N}_W = \hat{N}_{U} + W (\#eq:weir-escapement),
\end{equation}

and escapement to the tributary is calculated as, 

\begin{equation}
	\hat{N}_T = \hat{N}_{U} + \hat{N}_{D} + \hat{H}_T + W (\#eq:trib-escapement).
\end{equation}

Variance of each estimated term is then summed accordingly, following @casella2002statistical,

\begin{equation}
	Var(\hat{N}_T) = Var(\hat{N}_{U}) + Var(\hat{N}_{D}) + Var(\hat{H}_T), (\#eq:var-weir-escapement)
\end{equation}

where $W$ is assumed to be known without error.

##### Female Tributary Escapement

Monitored populations using high precision methods allows the point ($\hat{N}_{T,F}$) and variance ($Var(\hat{N}_{T,F})$) estimation of female tributary escapement to follow equations \@ref(eq:trib-escapement) and \@ref(eq:var-weir-escapement) once all terms include only females. Dividing escapement into females only is completed by stratifying the proportion of females ($\hat{f}$, Section \@ref(sec:percentfemale)) into upstream and downstream locations. Location-specific female proportions are then multiplied with the associated upstream ($\hat{N}_U$) and downstream ($\hat{N}_U$) abundance estimates before summing with female weir removals ($W_f$) and female tributary harvest ($\hat{H}_{T,F}$). Female only abundance and harvest terms are calculated similarly to equations \@ref(eq:femaleescapement) and \@ref(eq:femaleescapementvariance).

In populations with only low precision monitoring methods available, tributary female escapement and variance is estimated following:

\begin{align}
	\hat{N}_{T,F} &= \hat{N}_T \; \hat{f} (\#eq:femaleescapement) \\ 
	Var(\hat{N}_{T,F}) &= \hat{N}_T^2 Var(\hat{f}) + \hat{f}^2 Var(\hat{N}_{T,F}) + Var(\hat{N}_{T,F}) Var(\hat{f}). (\#eq:femaleescapementvariance)
\end{align}

## Spawner Abundance {#sec:spawner}

Spawner abundance represents the number of fish participating in spawning and contributing to future progeny in the tributary. The value excludes fish removed from the returning aggregate because of harvest, weir management or prespawn mortality. Spawner abundance is considered a HLI used for status recovery assessments, regional monitoring and evaluation, and fisheries management. Abundance is reported for total spawners ($S$) and natural-origin ($S_N$) only spawners. In addition, spawner abundance is partitioned to exclude jacks or returning one ocean adult fish ($S_{EJ}$; e.g., age 3 jacks for spring/summer Chinook Salmon). 

### Total Spawner Abundance
	
Total spawner abundance is estimated by summing across all $l$ strata from upstream ($\hat{N}_{U,l}$) and downstream ($\hat{N}_{D,l}$) abundance estimates from section \@ref(sec:trib-escapement) and then removing the proportion of fish estimated to be prespawn mortalities ($\hat{p}$) from section \@ref(sec:prespawn). 
	
\begin{equation}
	\hat{S}_T = (1-\hat{p}) \bigg(\sum_{l = 1}^{L} (\hat{N}_{U,l} + \hat{N}_{D,l})\bigg) (\#eq:TSA)
\end{equation}

The variance of total spawner abundance is estimated following;	
	
\begin{align}
		Var(\hat{S}_T) &= Var(\hat{p})(Var(\hat{N}_U) + Var(\hat{N}_D)) + \hat{p}^2(Var(\hat{N}_U) \nonumber \\
					&+ Var(\hat{N}_D)) + Var(\hat{p})(\hat{N}_U + \hat{N}_D)^2.
					(\#eq:var-TSA)
\end{align}
		
#### Excluding Jacks
		
Two methods exist to estimate spawner abundance excluding jacks or one ocean adult returns. The first method subtracts out an estimated number of jacks on the spawning grounds by multiplying the estimated proportion of jacks ($\hat{A}_3$); Section \@ref(sec:agestructure) on the spawning grounds to total spawner abundance (assumes representative collection of age samples). 
		
\begin{equation}
		\hat{S}_{T,EJ} = \hat{S}_T(1-\hat{A}_3) (\#eq:spawnej)
\end{equation}

The variance of spawners excluding jacks is given through common variance properties [@casella2002statistical] as

\begin{equation}
			Var(\hat{S}_{T,EJ}) = Var(\hat{S}_T)Var(\hat{A}_3)) + \hat{A}_3^2Var(\hat{S}_T) + \hat{S}_T^2Var(\hat{A}_3). (\#eq:Vspawnej)
\end{equation}

The second method follows the point and variance estimates for total spawner abundance ($\hat{S}$), but excludes the jack-stratified upstream and downstream abundance estimates.

\begin{equation}
		\hat{S}_{T,EJ} = (1-\hat{p}) \bigg(\sum_{l\ne jacks}^{L} (\hat{N}_{U,l} + \hat{N}_{D,l})\bigg) 
		(\#eq:spawnej2)
\end{equation}

### Natural-Origin Spawner Abundance {#sec:spawnerabundance}

Natural origin spawner abundance is estimated as the product of the natural origin spawner proportion (($1-\hat{pHOS}$), \@ref(sec:hatcheryfraction)) and total spawner abundance following:

\begin{equation}
			\hat{S}_{T,N} = \hat{S}_T(1-\hat{pHOS}).
					(\#eq:nosa)
\end{equation}

The estimated variance of natural origin spawner abundance follows a similar pattern as the variance of total spawners excluding jacks (\@ref(eq:Vspawnej)). 

\begin{equation}
			Var(\hat{S}_{T,N}) = Var(\hat{S}_T)Var(\hat{pHOS})) + \hat{pHOS}^2Var(\hat{S}_T) + \hat{S}_T^2Var(\hat{pHOS}). (\#eq:Vnosa)
\end{equation}

#### Natural-Origin Spawner Excluding Jacks
Using a slight modification, natural-origin spawner abundance excluding jacks $\hat{S}_{T,N,EJ}$ can be estimated from total spawners excluding jacks $\hat{S}_{T,EJ}$ and stratifying the proportion of hatchery origin spawners to exclude jacks ($\hat{pHOS}_{EJ}$; \@ref(sec:hatcheryfraction)).

\begin{equation}
			 \hat{S}_{T,N,EJ} = \hat{S}_{T,EJ}(1-\hat{pHOS}_{EJ})
\end{equation}

The variance for $\hat{S}_{T,N,EJ}$ follows the same format as equation \@ref(eq:Vnosa).

### Female Spawner Abundance

To estimate total female spawners in a tributary, total spawner abundance ($\hat{S}_T$) is multiplied by the proportion of females in the population ($\hat{f}$; \@ref(sec:percentfemale)). 

\begin{equation}
			\hat{S}_{T,F} = \hat{S}_T \; \hat{f}
			(\#eq:Fnosa)
\end{equation}
		
The approximate variance is given by the delta method as

\begin{equation}
			Var(\hat{S}_{T,F}) = \hat{S}_T^2 \; Var(\hat{f}) + \hat{f}^2 \; Var(\hat{S}_T) + Var(\hat{S}_T) \; Var(\hat{f}).
			(\#eq:V-Fnosa)
\end{equation}

## Fish per Redd {#sec:fishperredd}

Fish per redd values in monitored areas are estimated from the sum of adult upstream and downstream abundance ($\hat{N}_U$, $\hat{N}_D$; \@ref(sec:trib-escapement)) divided by total redds ($R_T$; \@ref(sec:reddcount)). The value represents the number of fish within a tributary or population, including prespawn mortalities and jacks, needed to create one redd. Fish per redd ($\hat{N/R_T}$) is estimated as 

\begin{equation}
		\hat{N/R_T} = \frac{(\hat{N}_{U} + \hat{N}_D)}{R_T}.
\end{equation}

Assuming redds are known without error, the variance of estimated fish per redd becomes

\begin{equation}
		Var(\hat{N/R_T}) = (\frac{1}{R_T^2}) \; (Var(\hat{N}_U) + Var(\hat{N}_D)).
\end{equation}
	
## Female Spawners per Redd {#sec:femalespawnerredd}

Female spawners per redd are estimated using total spawners ($\hat{S}_T$; \@ref(sec:spawner)), female proportion ($\hat{f}$; \@ref(sec:femalespawnerredd)), and total redds ($R_T$; \@ref(sec:reddcount)). The value represents the number of spawning females within a population needed to create one redd. Female spawners per redd ($\hat{S_f/R_T}$) is estimated by 

\begin{equation}
			\hat{S_f/R_T} = \frac{\hat{S}_T\hat{f}}{R_T}.
\end{equation}

Assuming redds are known without error, the variance of spawners per redd becomes,
		
\begin{equation}
			Var(\hat{S_f/R_T}) = (\frac{1}{R_T^2}) \; (\hat{S}_T^2Var(\hat{f}) + \hat{f}^2Var(\hat{S}_T) + Var(\hat{S}_T)Var(\hat{f}))
\end{equation}

## Size-at-Return {#sec:sizereturn}

The size of returning Chinook Salmon and steelhead is described using data collected at LGD, adult escapement weirs and during spawning ground surveys. Size-at-return is summarized at these different spatial scales for natural- and hatchery-origin adult returns to examine potential differences between locations. Size-at-return is reported as the distribution of fork lengths collected from a random sample of individuals. Distributions are presented using common summary statistics (e.g., means, medians, standard deviation) or with graphics (e.g., histograms, boxplots) to illustrate the full range and variability in observed lengths. In addition to origin, size-at-return is often reported separately for each life stage or trapping season group, and potentially split into finer temporal scales, such as, weeks or months of capture.

## Adult Run-Timing {#sec:runtiming}

Run-timing of Chinook Salmon and steelhead adults migrating upstream is often reported at mainstem dams (e.g., Bonneville and Lower Granite), tributary IPTDS using PIT tag observations, or with individual fish observations at adult escapement weir locations. Travel time between locations is calculated as the difference in arrival timing between locations. Run-timing data is summarized with empirical cumulative distribution functions and reported as the date of passage for 1, 10, 50, 90 and 100 percent of individuals within each origin, life-stage or release group, or reported graphically.

## Spawn Timing {#sec:spawntiming}

Adult spawn timing is described for Chinook Salmon and steelhead with the proportion of total redds constructed during each survey date. However, it is recognized that the accuracy and precision of a spawn timing metric is limited due to the effort and intensity of spawning ground surveys. Ideally, to fully understand spawn timing we need to observe redd construction daily throughout the full spawning season.

## Age Structure {#sec:agestructure}

Age structure is calculated separately for natural- and hatchery-origin Chinook Salmon and steelhead adults. Age structure is reported as a proportion, and represents the composition of total tributary escapement assigned to each age-class for a given return year. Proportions are estimated from a sub-sample of total adults returning to the tributary or population, collected at a weir, or during carcass surveys. Sub-sampled fish are assigned an age from either a known mark/tag, or estimated from a genetic parentage, dorsal fin ray, or scale analysis. In some instances, multiple methods are available to estimate age of an individual fish. In these cases, the assigned age is determined by method accuracy; mark/tag first, genetic assignment, dorsal fin ray, and finally scale analysis. Fish length (i.e., fork length) is not used to determine age. Once sampled individuals are aged, estimation of age class proportions are made using two analytical approaches: (1) direct estimation, and (2) length-at-age key.

### Direct Estimation

The first method assumes a representative sub-sample of aged fish was collected with equal rates of sampling. If equal rates of sampling are met for all age groups, proportions are calculated using a multinomial distribution following:

\begin{equation}
			\hat{A}_{a} = \frac{n_a}{\sum_{a=1}^{A} n_{a}},
			(\#eq:age-props)
\end{equation}
		
where $\hat{A}_{a}$ is the estimated proportion of fish in age group $a$ within the total tributary escapement, and $n_a$ is the number of individuals sampled in group $a$ [@casella2002statistical]. The variance equation for multinomial probabilities is calculated similar to that of the binomial probability parameter,

\begin{equation}
			Var(\hat{A}_a) = \frac{\hat{A}_a(1-\hat{A}_a)}{\sum_{a=1}^{A} n_{a}}.
\end{equation} 

### Length-at-Age Key

Weir detection and carcass recovery rates are often un-equal for individuals of different sizes or age classes. If unequal sampling is suspected after examining weir efficiencies ($\hat{E}_l$) and carcass recovery rates ($\hat{g}_l$) from section \@ref(sec:mark-recap) and \@ref(sec:carcass-exp), length-at-age keys are developed by weighting age proportions based on estimated abundance ($\hat{N}_{T,l}$) of fish in each length-based strata. Length-at-age keys are developed by first estimating the conditional probability ($\hat{A_{a|l}}$) of sub-sampled fish being in age-group ($a$) given it is in length interval ($l$).

\begin{equation}
			\hat{A}_{a|l} = \frac{n_{a,l}}{\sum_{a=1}^{A} n_{a,l}} (\#eq:agelength)
\end{equation}
		
Next, conditional probabilities are multiplied by estimated tributary escapement of fish in similar length intervals or strata.

\begin{equation}
			\hat{N}_{T,a,l} = \hat{N}_{T,l} \; \hat{A}_{a|l}  (\#eq:agelength-key)
\end{equation}
		
The variance of multiplying two random variables becomes,

\begin{equation}
			Var(\hat{N}_{T,a,l}) = \hat{N}_{T,l}^2 \; Var(\hat{A}_{a|l}) + \hat{A}_{a|l}^2 \; Var(\hat{N}_{T,l}) + Var(\hat{N}_{T,l}) \; Var(\hat{A}_{a|l}).
			(\#eq:var-agelength-key)
\end{equation}

Lastly, summing across length interval abundance estimates for an age class and dividing by total escapement yields weighted proportions to represent the total return year age structure.

\begin{align}
			\hat{A}_{a} &= \frac{\sum_{l=1}^{L} \hat{N}_{T,a,l}}{\sum_{a=1}^{A}\sum_{l=1}^{L} \hat{N}_{T,a,l}} \\ \nonumber
						&= \frac{\hat{N}_{T,i\cdotp}}{\hat{N}_{T,\cdotp\cdotp}}
						(\#eq:age-length-key)
\end{align}
		
The delta method approximates the variance of age proportions as,

\begin{equation}
			Var(\hat{A}_{i}) = \bigg(\frac{1}{\hat{N}_{T,\cdotp\cdotp}^2}\bigg) Var(\hat{N}_{T,i\cdotp}) + \bigg(\frac{\hat{N}_{T,i\cdotp}^2}{\hat{N}_{T,\cdotp\cdotp}^4}\bigg) Var(\hat{N}_{T,\cdotp\cdotp})
			(\#eq:var-age-length-key)
\end{equation}

## Age-at-Return {#sec:agereturn}

Brood year based adult returns are reported in two ways: (1) as the estimated tributary escapement of brood year returns for each age group, and (2) as female only brood year returns. Estimating return year tributary escapement belonging to each age group allows for run-reconstruction and cohort based smolt-to-adult (\@ref(sec:sar)), progeny-per-parent (\@ref(sec:ptop)), and recruit-per-spawner (\@ref(sec:rpers)) estimates.

### Brood Year Return
The calculation of brood year ($BY$) adult returns requires the summation of tributary escapement estimates ($\hat{N}_T$; \@ref(sec:trib-escapement)) multiplied by age structure proportions ($A_a$; \@ref(sec:agestructure)) from multiple return years ($RY$). Where a single age-class brood year return ($\hat{N}_{BY,a}$) is calculated as

\begin{equation}
				\hat{N}_{BY,a} = \hat{N}_{T,RY=BY+a} \; \hat{A}_{a,RY=BY+a}, (\#eq:agebroodreturn).
\end{equation}  

And total brood year returns ($\hat{N}_{BY}$) is given by the summation

\begin{equation}
				\hat{N}_{BY} = \sum_{a=1}^{A} (\hat{N}_{T,RY=BY+a} \; \hat{A}_{a,RY=BY+a}). (\#eq:broodreturn)
\end{equation}.
			
The variance of total brood year return again requires the summation of individual age class returns. 			

\begin{align}
				Var(\hat{N}_{BY}) = \sum_{a=1}^{A} \bigg[ & (\hat{N}^2_{T,RY=BY+a} \; Var(\hat{A}_{a,RY=BY+a})) + (\#eq:broodreturnvariance) \\ 
								& (\hat{A}^2_{a,RY=BY+a} \; Var(\hat{N}_{T,RY=BY+a})) + \\ \nonumber
								& (Var(\hat{N}_{T,RY=BY+a}) \; Var(\hat{A}_{a,RY=BY+a}))\bigg]. \nonumber
\end{align}. 

Estimates of adult brood year returns, excluding jacks, requires the same summation as equation \@ref(eq:broodreturn) but excludes the jack age class.

\begin{equation}
		\hat{N}_{BY,EJ} = \sum_{a\ne jacks}^{A} (\hat{N}_{T,RY=(BY+a)} \; \hat{A}_{a,RY=(BY+a)}).
\end{equation}.

The associated variance for brood year returns ($Var({\hat{N}_{BY,EJ}})$) excluding jacks follows equation \@ref(eq:broodreturnvariance) without the jack age class. 

Female only adult brood year returns ($\hat{N}_{BY,F}$) is calculated by summing female stratified run year estimates of tributary escapement ($\hat{N}_{T,F}$; \@ref(sec:trib-escapement)) and age structure ($\hat{A}_{a,F}$; \@ref(sec:agestructure)) following equation \@ref(eq:broodreturn). The variance of female brood year returns follows equation \@ref(eq:broodreturnvariance).

<!--
#### Scale Analysis {#sec:scaleageing}

Returning adult steelhead age is assessed through scale analysis using data collected from individual fish captured at the weirs and from steelhead carcasses sampled during spawning ground surveys. Scales are removed from the preferred area between the posterior edge of the dorsal fin and the anterior edge of the anal fin above the lateral line [@scarnecchia1979variation; @knudsen1985variation]. 

Prior to examination we prepare the scales by soaking them in a mild detergent and manually cleaning them to remove epidermal tissue and dirt. The scales are then rinsed with distilled water and mounted between two glass microscope slides. Up to 10 scales were mounted per fish. We acquired the scale image through a Zeiss Axio Lab.A1 microscope and AxioCam ER c5s camera. Three independent readers read our scales and determined stream, ocean and total age for each fish. The modal age between three readers was then taken as the most reliable and reported as final age.

We used steelhead scale aging methods described by @davis1985steelhead and @seelbach1984interpretation. Stream and ocean growth are distinguishable by circuli spacing and sometimes a smolting check [@seelbach1984interpretation]. Circuli laid down during ocean residency are much more widely spaced than during stream growth. Based on these criteria we estimated age structure and spawning history.

We adopted European nomenclature for fish age description as described by @schwartzberg1989experiments. The number of stream annuli (number of winters a fish spent in the stream) is designated by an Arabic numeral followed by a period and the number of ocean annuli. Thus, a steelhead that spent two years in the Imnaha River watershed as a juvenile and one year in the Pacific Ocean would have a recorded age of 2.1. Adult summer run steelhead spend a winter in freshwater prior to spawning. An annulus is not formed while the adults are in freshwater. Therefore, a steelhead with a recorded scale-based age of 2.1 is actually experiencing its fourth winter and spring while returning to spawn. A repeat spawner is indicated by an “S” after the ocean age followed by the next ocean year. If the above mentioned fish had spawned, survived and was returning to freshwater for a second spawning run it would be recorded as 2.1S1.

@beamish1983forgotten stressed the need for age validation when using scales. Validation techniques include mark and recapture of known age fish, and length frequency analysis. Direct age validation was not possible for our steelhead age determinations. The precision or repeatability of our age determinations was estimated by an average percent error (APE) index [@beamish1981method] using the equation;

\begin{equation}
  APE = \frac{1}{N}\sum^{N}_{j=1}\bigg[\frac{1}{R}\sum^{R}_{i=1}\frac{(X_{ij} - X_J)}{X_J}\bigg]*100, (\#eq:scaleAPE)
\end{equation}

where, $N$ is the number of fish aged, $R$ is the numbers of scale readers, $i$ is the $i^{th}$ age of the $j^{th}$ fish, and $j$ is the average age of the $j^{th}$ fish. When multiplied by 100 the equation becomes an index of average percent error for a set of age determinations. The index ranges from 0 to 100, and indicates higher precision with smaller index values. Each read from the three independent scale readers are used to obtain APE estimates of stream, ocean, and total age.

The coefficient of variation ($CV$) is also a strong estimator of reproducibility according to @chang1982statistical. We calculated $CV$ for each fish and averaged over all fish. The percent error contributed by each observation ($D$) can be estimated by the following index of precision [@chang1982statistical]; 

\begin{equation}
  D = \frac{CV}{\sqrt{R}}.
\end{equation}
-->
