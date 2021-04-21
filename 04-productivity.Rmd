# Productivity {#chap:prod}

The DFRM Research Division calculates Chinook salmon and steelhead productivity metrics identified by the AHSWG [@beasley2008recommendations] and described in CA [DES](http://www.streamnet.org/coordinated-assessments-des/). To calculate productivity metrics a combination of adult and juvenile abundance metrics described in chapters \@ref(#chap:adult) and \@ref(#chap:juvenile) are used. Adult and juvenile metrics include variations (e.g., including and excluding jacks, females only) of total brood year returns, return year spawner abundance, juvenile abundance and smolt equivalents.

The summary and analysis methods used to calculate productivity metrics are described below and provide a consistent and comparable approach across all NPT monitoring locations. In some cases, calculation methods are different for the various species or runs, or across the landscape and at different spatial scales. Necessary differences in methodology exist because of local management, available data, or to better meet monitoring objectives. In most cases the calculation method and equations are the same, however, the input variables are summarized differently and at the spatial scale meeting the objective. Any deviations in our described methods due to species, run, location or spatial scale are described in annual reports when conditions necessitate.

## Smolt-to-Adult Return Rates {#sec:sar}

Smolt to adult return (SAR) ratios are calculated four different ways: (1) tributary emigrant to tributary escapement, (2) LGD smolts to tributary escapement, (3) LGD smolts to LGD escapement, and (4) tributary emigrants to LGD escapement. A similar point and variance estimator is used for each SAR variant. 

\begin{align}
			& (1) \qquad \hat{SAR}_1 = \frac{\hat{N}_{BY}}{\hat{N}_{J,BY}} \\
			& (2) \qquad \hat{SAR}_2 = \frac{\hat{N}_{BY}}{\hat{N}_{S,BY}} \\
			& (3) \qquad \hat{SAR}_3 = \frac{\hat{N}_{LGD,BY}}{\hat{N}_{S,BY}} \\
			& (4) \qquad \hat{SAR}_4 = \frac{\hat{N}_{LGD,BY}}{\hat{N}_{J,BY}}									
\end{align}

Where $\hat{N}_{BY}$ is the total brood year return (\@ref(sec:agereturn)), $\hat{N}_{LGD,BY}$ is brood year return to Lower Granite Dam, $\hat{N}_{J,BY}$ is brood year juvenile emigrant abundance (\@ref(sec:juvenileabundance)), and $\hat{N}_{S,BY}$ is the brood year juvenile smolt equivalent estimate at Lower Granite Dam (\@ref(#sec:smolts)).

The approximate variance of each $SAR$ variant uses the delta methods and follows,

\begin{equation}
				Var(\hat{SAR}_1) = \bigg(\frac{1}{\hat{N}^2_{J,BY}}\bigg) \; Var(\hat{N}_{BY}) + \bigg(\frac{\hat{N}_{BY}^2}{\hat{N}^4_{J,BY}}\bigg) \; Var(\hat{N}_{J,BY}). 
\end{equation} 
			
## Progeny-per-Parent Ratio {#sec:ptop}

Four variants of progeny-per-parent ($P/P$) ratios are calculated to estimate trends in adult to adult productivity. The four variants include (1) total recruits per total spawner, (2) adult recruits per adult spawner, (3) total recruits per adult spawner, and (4) female recruits per female spawner. Estimation of each progeny-per-parent ($P/P$) follows a similar format using total recruits ($\hat{N}_{BY}$), adult recruits ($\hat{N}_{BY,EJ}$) and female recruits ($\hat{N}_{BY,F}$) from section \ref{sec:agereturn} in the numerator, and total spawner ($\hat{S}_{T}$), adult spawner ($\hat{S}_{T,EJ}$) and female spawners ($\hat{S}_{T,F}$; \@ref(sec:spawnerabundance)) in the denominator.

\begin{align}
			& (1) \qquad \hat{P/P}_1 = \frac{\hat{N}_{BY}}{\hat{S}_T} \\
			& (2) \qquad \hat{P/P}_2 = \frac{\hat{N}_{BY,EJ}}{\hat{S}_{T,EJ}} \\
			& (3) \qquad \hat{P/P}_3 = \frac{\hat{N}_{BY}}{\hat{S}_{T,EJ}} \\
			& (4) \qquad \hat{P/P}_4 = \frac{\hat{N}_{BY,F}}{\hat{S}_{T,F}}
\end{align}
		
The variance approximation, using the delta method, for the four variations of progeny-per-parent follows the same format.

\begin{equation}
Var(\hat{P/P}_1) = \bigg(\frac{1}{\hat{S}^2_{T}}\bigg) \; Var(\hat{N}_{BY}) + \bigg(\frac{\hat{N}_{BY}^2}{\hat{S}^4_{T}}\bigg) \; Var(\hat{S}_{T}) 
\end{equation}

## Recruit per Spawner {#sec:rpers}

### Spawners Above Juvenile Trap {#sec:spawnerstrap}
Calculating juvenile recruits per spawner requires an estimation of fish spawning above a juvenile emigrant trap. The inclusion of all tributary spawners in recruit per spawner values biases the productivity estimate low. To avoid the bias, the spatial location of tributary spawners is assumed equal to redd location. As such, the proportion of redds above a juvenile trap ($(R_J/R_T)$; \@ref(sec:reddcount)) is applied to tributary spawners ($\hat{S}_T$; \@ref(sec:spawner)) to estimate spawners above emigrant traps ($\hat{S}_{J}$).

\begin{equation}
				\hat{S}_{J} = \hat{S}_T \bigg(\frac{R_J}{R_T}\bigg) (\#eq:spawnerjuveniletrap)
\end{equation}
			
Assuming redds are known without error the variance becomes [@casella2002statistical],

\begin{equation}
				Var(\hat{S}_{J}) = \bigg(\frac{R_J}{R_T}\bigg)^2 Var(\hat{S}_T) (\#eq:spawnerjuveniletrapvariance)
\end{equation}

In some streams, weir management and brood stock removal can influence spawner per redd values upstream and downstream of the weir site violating the assumption of spawner and redd distribution being equal. If the juvenile trap is located upstream of the weir, spawners above the juvenile trap and it's associated variance is calculated similarly to equations \@ref(eq:spawnerjuveniletrap) and \@ref(eq:spawnerjuveniletrapvariance) but using spawners ($\hat{S}_U$) and redds ($R_U$) upstream instead of totals.

\begin{equation}
				\hat{S}_{J} = \hat{S}_U \bigg(\frac{R_J}{R_U}\bigg) (\#eq:spawnerjuveniletrapaboveweir)
\end{equation}

If juvenile traps are located downstream of the adult weir spawners between the weir and juvenile emigrant trap need to be estimated. To estimate spawners between the two locations, we can expand the number of redds between the weir and trap by the downstream spawner per redd value. Estimated spawners above the juvenile emigrant trap then becomes the sum of spawners upstream of the weir ($\hat{S}_U$) with the estimated spawners between the weir and trap.

\begin{equation}
			\hat{S}_{J} = \hat{S}_U + \bigg(\frac{R_J-R_U}{R_D}\bigg)\hat{S}_D
\end{equation}

Again, assuming redds are known without error the variance is,

\begin{equation}
				Var(\hat{S}_{J}) = Var(\hat{S}_U) + \bigg(\frac{R_J-R_U}{R_D}\bigg)^2 Var(\hat{S}_D).
\end{equation}

### Recruit per Spawners

Six variants of juvenile recruit per spawner values are calculated to show productivity trends. The six recruit per spawner variants include (1) emigrant per total spawner, (2) emigrant per adult spawner, (3) emigrant per female spawner, (4) smolt per total spawner, (5) smolt per adult spawner, and (6) smolt per female spawner.

\begin{align}
			&(1) \qquad \hat{R/S}_{1} = \frac{\hat{N}_{J}}{\hat{S}_{J}} \\
			&(2) \qquad \hat{R/S}_{2} = \frac{\hat{N}_{J}}{\hat{S}_{J,EJ}} \\
			&(3) \qquad \hat{R/S}_{3} = \frac{\hat{N}_{J}}{\hat{S}_{J,F}} \\
			&(4) \qquad \hat{R/S}_{4} = \frac{\hat{N}_{S}}{\hat{S}_{J}} \\
			&(5) \qquad \hat{R/S}_{5} = \frac{\hat{N}_{S}}{\hat{S}_{J,EJ}} \\
			&(6) \qquad \hat{R/S}_{6} = \frac{\hat{N}_{S}}{\hat{S}_{J,F}}
\end{align}
		
Where the numerator $\hat{N}_{J}$ is the total emigrant abundance at the trap (\@ref(sec:juvenileabundance)) or $\hat{N}_{S}$, the estimated number of smolts at Lower Granite Dam (\@ref(sec:smolts)). And the denominator consists of all spawners ($\hat{S}_{J}$), spawners excluding jacks ($\hat{S}_{J,EJ}$) or female spawners ($\hat{S}_{J,F}$) above the juvenile trap. Where the three types of spawners above the trap are calculated following method outlined in section \@ref(sec:spawnerstrap). The variance approximation for the six variations of recruits per spawner uses the delta method and follows the same format.

\begin{equation}
				Var(\hat{R/S}_1) = \bigg(\frac{1}{\hat{S}^2_{J}}\bigg) \; Var(\hat{N}_J) + \bigg(\frac{\hat{N}_J^2}{\hat{S}^4_{J}}\bigg) \; Var(\hat{S}_{J}) 
\end{equation}
		

