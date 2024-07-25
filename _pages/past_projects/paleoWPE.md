---
layout: general_content
permalink: /past_projects/paleoWPE/
---
<h2>Information-theoretic analysis of ice-core data</h2>

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/paleoWPE/wais-pit.jpg' | relative_url }}" height="100"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/paleoWPE/wais-pit.jpg' | relative_url }}"
height="100"></A></TD>

</TR>
</TABLE>


<h3>Project Description</h3>

We take an information-theoretic approach to analyzing 68,000 years of
water isotope data from the WAIS Divide ice core, the longest,
highest-resolution record yet recovered from Antarctica. The water
isotopes are primarily a proxy for local temperature at the time of
snow deposition, but also contain information about broader
atmospheric circulation patterns.  Using estimates of the Shannon
entropy rate of the isotope measurements, we find that the rate of
information production reveals differences in analytical techniques,
even when those differences leave no visible traces in the raw
data. The entropy calculations also allow us to identify a number of
intervals in the data that may be of direct relevance to paleoclimate
interpretation.


Here are a few of those results:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/paleoWPE/NGRIP_d18O_wpe.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/paleoWPE/NGRIP_d18O_wpe.jpg' | relative_url }}"
height="300"></A></TD>

<TD><A HREF="{{ '/assets/paleoWPE/WDC_d18O_wpe.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/paleoWPE/WDC_d18O_wpe.jpg' | relative_url }}"
height="300"></A></TD>

</TR>
</TABLE>

The blue traces in these images are the d18O measurements from the
NGRIP (left) and WAIS Divide (right) cores; the black traces are estimates of the
Shannon entropy rate calculated from those signals using a weighted
variant of permutation entropy (WPE) technique described by
<a href="https://journals.aps.org/pre/abstract/10.1103/PhysRevE.87.022911">
Fadlallah et al.</a>.  WPE measures the average rate at which new
information-unrelated to anything in the past-is produced by the
system that generated the time series.  If that rate is very low, the
current observation contains a lot of information about the past and
the signal is perfectly predictable.  If that rate is very high, all
of the information in the observation is completely new: i.e., the
past tells you nothing about the future.  The 2016 <i>Intelligent Data
Analysis Symposium</i> paper and 2019 <i>Chaos</i> paper cited
below describe these ideas and results in more depth.  You can also
check
out <a href="https://www.santafe.edu/news-center/news/predicting-unpredictability-information-theory-offers-new-way-read-ice-cores">this
press release from the Santa Fe Institute</a> for a higher-level
overview of the project.

A very interesting feature in the right-hand curve above is the
large jump in WPE between 5-8 ka.  As it turns out, an older
instrument was used to analyze the ice in this region.  The WPE
results suggest that that instrument introduced noise into the data:
i.e., every measurement contains completely new information, unrelated
to the previous ones.  That noise is not easy to see in the d18O data
itself without a laborious, fine-grained examination by a human
expert, but the anomaly is easily flagged with a quick calculation of
WPE.  By going back and re-measuring this segment of the ice, we were
able to confirm the conjecture that the jump in WPE was due to noise
in the older instrument; please see the 2018
<i>Entropy</i> paper cited below for more details or this
<a href="https://santafe.edu/news-center/news/how-complexity-science-can-quickly-detect-anomalies-climate-records">
press release from the Santa Fe Institute</a> for more details.


It also turns out that WPE tracks accumulation, which is a very
useful result, as described in 2019 the CHAOS paper below.


We have recently discovered that permutation entropy techniques
can also detect mixing effects in a data set - e.g., when successive
measurements are not independent - and even estimate the scales on
which this occurs.  This can happen in the laboratory apparatus (e.g.,
if measurements are performed in a chamber or a pipe) or in the study
system (e.g., diffusion in the ice sheet).  We are also studying this
effect in methane data from Mauna Loa and ocean sediment cores.  See
the Neuder et al. paper in the list below for more details.

<h3> People</h3> 


<ul> 
	<li> <a href="joshuagarland.com">Joshua Garland</a>, Applied
	Complexity Fellow at the <A HREF="http://www.santafe.edu">Santa Fe
	Institute</a>.
	</li>
	<li>
	<a href="https://instaar.colorado.edu/people/tyler-jones/"> Tyler
	Jones</a>, research
	associate, <a href="http://instaar.colorado.edu">INSTAAR</a>.
	</li>
	<li>
	<a href="https://michaelneuder.github.io/"> Mike
	Neuder</a>, BS student, University of Colorado (now in the MS program
	at Harvard).
	</li>
	<li>
	<a href="http://instaar.colorado.edu/people/james-w-c-white/">Jim
	White</a>, Professor of Geological Sciences.
	</li>
	<li>
	<a href="{{ '/' | relative_url }}"> Liz Bradley</a>, Professor of Computer
	Science.
	</li>
</ul> 


<h3> Papers, press, talks</h3>
<ul>
	<li> M. Neuder, E.  Bradley, E. Dlugokencky, J. W. C. White, and
	J. Garland, 
	<a href="https://aip.scitation.org/doi/10.1063/1.5127211">
	"Detection of Local Mixing in Time-Series Data Using Permutation
	Entropy," in revision,
	</a> <i>Physical Review E</i>.  Preprint available
	on <a href="https://arxiv.org/abs/2010.12384">arXiv</a>.
	</li>
	<li>
	J. Garland, T. R. Jones, M. Neuder,
	J. W. C. White, and E.
	Bradley, <a href="https://aip.scitation.org/doi/10.1063/1.5127211">
	"Climate entropy production recorded in a deep Antarctic ice core,"
	</a> <i>CHAOS</i> <b>29</b> 101105 (2019).  Preprint available
	on <a href="http://arxiv.org/abs/1806.10936">arXiv</a>.
	</li>
	<li>
	Presentation at
	the <a href="http://meetings.siam.org/sess/dsp_programsess.cfm?SESSIONCODE=66901">
	2019 SIAM GeoScience Meeting</a>
	</li>
	<li>
	J. Garland, T. R. Jones, V. Morris, M. Neuder, J. W. C. White,
	E. Bradley,
	<a href="https://www.mdpi.com/journal/entropy/special_issues/theory_geosciences">"Anomaly
	Detection in Paleoclimate Records using Information
	Theory,"</a> <i>Entropy</i> <b>20</b>:931 (2018)
	</li>
	<li>
	J. Garland and
	E. Bradley, <a href="https://sinews.siam.org/Details-Page/information-theory-in-earth-and-space-science">"Information
	Theory in Earth and Space Science,"</a> <i>SIAM News</i>, October 2018
	</li>
	<li>
	J. Garland, T. Jones, E. Bradley, R. James and
	J. W. C. White, <a href="{{ '/assets/papers/Garland-IDA2016.pdf' | relative_url }}"> "A First Step
	Toward Quantifying the Climate's Information Production Over the Last
	68,000 Years,"</a> <a href="https://link.springer.com/book/10.1007/978-3-319-46349-0">IDA-16
	(Proceedings of the 12th International Symposium on Intelligent Data
	Analysis), Stockholm, October 2016.</a>
	</li>
	<li>
	Poster presentation at
	the <a href="https://agu.confex.com/agu/fm16/meetingapp.cgi/Paper/148855">
	2016 AGU Fall Meeting</a>
	</li>
	<li>
	Press releases from the <a href="http://www.santafe.edu">Santa Fe
	Institute</a>
	about <a href="https://www.santafe.edu/news-center/news/predicting-unpredictability-information-theory-offers-new-way-read-ice-cores">the
	overall project</a> and
	the <a href="https://santafe.edu/news-center/news/how-complexity-science-can-quickly-detect-anomalies-climate-records">
	anomaly detection specifics</a>.
	</li>
</ul>


<h3> Support</h3>
<ul>
	<li> This material is based upon work supported by the National
	Science Foundation under grant number 1807478, among others.  Any
	opinions, findings, and conclusions or recommendations expressed in
	this material are those of the author(s) and do not necessarily
	reflect the views of the National Science Foundation.
	</li>
</ul>



<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   

