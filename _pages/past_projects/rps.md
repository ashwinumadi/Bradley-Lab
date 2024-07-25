---
layout: general_content
permalink: /past_projects/rps/
---
<h2>
Recurrence Plots and Dynamical System Analysis
</h2>


<img stype="align:top;" src="{{ '/assets/RPs/RP-in-subway.jpg' | relative_url }}">


<h3>
Recurrence plot in Lisbon subway 
</h3>

(World Mathmatics Year poster produced by the Sociedad Portuguesa de
Matematica.  Image courtesy of Joe Iwanski, University of Colorado.)


<!--
<a href="http://www.autoteilexxl.de/edu/?p=2103">View this page in
Swedish</a> courtesy of Daniela Milton.

<a
href="http://home4cars.com/blog/rekurrentnye-diagrammy-i-analiz-dinamicheskikh-sistem">View
this page in Russian</a> courtesy of Svetlana Prutkovskaya.

<a href="http://makescience.net/rps/">View this page in Macedonian</a>
courtesy of Petra Vlasic.

(Please note: I do not speak these languages, so I cannot attest
to how well any of these pages match the content below.)
-->


A recurrence plot is a two-dimensional representation technique that
brings out distance correlations in a time series.  RPs make it
instantly apparent whether a system is periodic or chaotic.  For
example, here's a recurrence plot of a chaotic time series measured
from a parametrically forced pendulum:


<img style="align:top;" src="{{ '/assets/RPs/pend-chaotic.gif' | relative_url }}">


The time series -- measurements of the bob angle, in radians, taken
every 0.165 milliseconds -- is spread out along both ordinate and
abscissa, and pixels are color-coded according to the inter-point
distances.  For instance, if the 17th point on the trajectory is 1.4
distance units away from the 135th point, the pixel lying at (17, 135)
on the recurrence plot will be shaded with the color that corresponds
to the distance range that includes 1.4 (yellow-green, in the plot
above).  This particular plot was constructed using the euclidean
norm, but other norms work just as well.

This intricate, beautiful structure reflects how trajectories move
on a chaotic attractor, making close (and not-so-close) returns on
different time scales.


Periodic time series have equally characteristic RPs.  Below is an
RP of a time series gathered from the same pendulum, but at a higher
forcing frequency, where the dynamics converged to a limit cycle:


<img style="align:top" src="{{ '/assets/RPs/pend-periodic.gif' | relative_url }}">


One can also plot <i>thresholded</i> recurrence plots or TRPs, which
highlight points that fall within a specified distance of one another.
In a TRP, the pixels located at (i,j) and (j,i) plot are black if the
distance between the ith and jth points in the time series falls
within some <i>threshold corridor</i>, like [0, 0.1], and white
otherwise.


We are interested in recurrence plots because they are an effective
way to visualize the geometry of a dynamical system's behavior, and we
are working on analysis techniques that can effectively characterize
the geometry of their structure.  Our goal is to find a good set of
building blocks with which to characterize recurrence-plot geometry.
One important application of this kind of work is classification of
dynamical systems.  When one is trying to determine whether a
particular ordinary differential equation matches the behavior of a
system, or whether two different dynamical systems are similar, it is
important to be able to compare the two effectively.  The standard
technique for doing this, nonlinear regression, is both expensive and
subject to convergence problems because of local extrema in the
regression landscape.  Because they give a broad-brush view of the
geometry of a system's behavior, recurrence plots may be a better way
to do a quick comparison of two dynamical systems.


One way to understand the geometric structure of a recurrence plot is
to consider the unstable periodic orbits or UPOs that lie within a
chaotic attractor.  There are an infinite number of UPOs, of all
periods, densely embedded in such an attractor; indeed, the orbit is
the closure of the set of UPOs and the trajectory can be thought of as
"hopping" from one UPO to the next.  The figure below demonstrates
this.  The left-hand image is an arbitrary Lorenz system trajectory;
the two right-hand images show trajectories from initial conditions
that are balanced perfectly on (respectively) a two-cycle and a five
cycle:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/RPs/images/fig1a_3D.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig1a_3D.jpg' | relative_url }}" height="200" width="200"></A></TD>

<TD><A HREF="{{ '/assets/RPs/images/fig3a_3D.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig3a_3D.jpg' | relative_url }}" height="200" width="200"></A></TD>

<TD><A HREF="{{ '/assets/RPs/images/fig4a_3D.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig4a_3D.jpg' | relative_url }}" height="200" width="200"></A></TD>

</TR>
</TABLE>

These UPOs were found by Ricardo Mantilla's <a href="UPOcode.html">UPOExplorer program</a>, which is based on the
algorithms in "Chaos beyond Onset: A Comparison of Theory and
Experiment, " <i>Physical Review Letters</i> <b>63:</b>1 (1989).  ODE
and solver parameters can be found in the Bradley/Mantilla paper
listed below. <!-- CHECK THIS -->


On a recurrence plot, UPOs manifest in a visually obvious way.  The
images below show TRPs of the <i>x</i> components of the above
trajectories:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/RPs/images/fig1a_XE.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig1a_XE.jpg' | relative_url }}" height="200" width="200"></A></TD>

<TD><A HREF="{{ '/assets/RPs/images/fig3a_XE.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig3a_XE.jpg' | relative_url }}" height="200" width="200"></A></TD>

<TD><A HREF="{{ '/assets/RPs/images/fig4a_XE.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/RPs/images/fig4a_XE.jpg' | relative_url }}" height="200" width="200"></A></TD>

</TR>
</TABLE>

These plots were constructed using a threshold corridor of [0, 2] and
the euclidean 2-norm.  Note how the repeated block RP structures that
correspond to the UPOs appear verbatim in the longer chaotic
trajectory.  This block-compositional structure appears on all recurr regardless
of norm, threshold corridor, or what state variable(s) are used in the
distance calculation; click <a href="{{ '/resources/rp-details/' | relative_url }}">here</a> for
associated images.


This decomposition led us to conjecture that the unstable periodic
orbits embedded in a chaotic attractor are a useful basis set for the
geometry of a recurrence plot of those data.  This provides not only a
simple way to locate unstable periodic orbits in chaotic time-series
data, but also a potentially useful way to use a recurrence plot to
identify a dynamical system. The Bradley/Mantilla paper listed below
explains these ideas in more detail.


Another interesting result of this line of work has been the
conjecture that recurrence plots are, to at least some extent,
independent of embedding dimension if the system is of low dimension
and one uses the maximum norm.  See the Iwanski/Bradley paper below
for more details.


<h3> Papers</h3>
<ul>
    <li>
    E. Bradley and R. Mantilla, <A href="papers/upo-rps.html"> <!-- CHECK THIS -->
    "Recurrence plots and unstable periodic orbits." </A> <I>Chaos</I>
    <b>12</b>:596-600 (2002).  Auxiliary figures available <a
    href="{{ '/assets/RPs/rp-details.html' | relative_url }}">here</a>.
    </li>
    <li>
    J. Iwanski and E. Bradley, <a
    href="{{ 'papers/iwanski-chaos98.html' | relative_url }}">"Recurrence plot analysis: To embed
    or not to embed?,"</a> <i> Chaos</i> <b>8</b>:861-871 (1998).
    <b>Addendum:</b> These results have been corroborated independently
    (e.g., J. Zbilut <i> et al., Physics Letters A</i>246:122 (1998)) but
    they do depend on the choice of norm, so the conclusions in this paper
    do not hold for all norms or all systems.
    </li> <!-- CHECK THIS -->
</ul>


<h3> Links</h3>
<ul>
    <li>
    Recurrence quantification analysis, proposed by
    <a href="http://www.rushu.rush.edu/nursing/features/zbilut.htm">
    Joe Zbilut</a> and 
    <a href="http://homepages.luc.edu/~cwebber/">
    Charles Webber</a>, is another way to get at RP structure.  RQA
    defines several statistical measures on the black points in a
    recurrence plot.
    </li>
    <li>
    Another interesting way to visualize dynamics of a flow, from the
    <a href="http://www.cg.tuwien.ac.at/~helwig/diss/node42.htm">computer
    graphics group at TU Wien</a>
    </li>
</ul>

<br>
<img SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   
