---
layout: general_content
permalink: /past_projects/flame/
---
<H2>
Control of a 2D Jet
</H2>


<h3>Project Description</h3>

The goal of this project was to learn how to use chaos to control mixing in gases.  
Specifically, we used tiny flaps mounted in the nozzle of an air jet to selectively 
enhance or suppress instabilities in the flow.  The engineering objective was to 
control chaotic mixing in this jet, with an eye towards fuel injector design, drag 
reduction, etc.  All control strategies require some kind of model, of course, and 
modeling a laboratory free shear flow is not an easy task; we used point-vortex 
models and data assimilation to solve this problem.


The basic idea is to co-opt the instability of the flow.  A small disturbance, in 
exactly the right spot, can generate or suppress large-scale turbulent fluid motion: 
the classic "sensitive dependence on initial conditions."  The "right spot," for the 
purposes of the air jet, is the boundary layer at the edge of the flow.  Given the 
length scales and Reynolds numbers that are involved, the microelectromechanical 
ystems (MEMS) process is exactly the right technology with which to build actuators 
for this purpose.  MEMS are integrated microdevices that combine electrical and 
mechanical components and thus allow sensing, actuating, and processing capabilities 
to be distributed widely in space.  For instance, arrays of micro-flaps, several 
hundred microns high, each with a small associated processing element, can be 
reliably manufactured on a single chip.


Our experimental apparatus consists of a planar air jet and a set of MEMS actuators 
that can be used to selectively perturb the boundary layer of its flow field.  
Here is a schematic and a photograph of the jet:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/jet-schematic.jpg' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/jet-schematic.jpg' | relative_url }}" height="300"></A></TD>

<TD><A HREF="{{ '/assets/gifs/tunnel-side-sep99.jpg' | relative_url }}" HEIGHT="500" width="300"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/tunnel-side-sep99.jpg' | relative_url }}" HEIGHT="300" width="200"></A></TD>

</TR>
</TABLE>


Compressed air is squirted into the bottom of the jet via a collection of hoses, 
five of which are visible in the images above.  The air flows vertically through 
a plenum (the aluminumtower sections) and a contraction (the black piece on top) 
and emerges through a rectangular slit with dimensions of {2.50 +/- 0.01mm} by 
400mm, giving an aspect ratio of 160:1.  This slit-shaped nozzle is shown in 
closeup below.


<A HREF="{{ '/assets/gifs/tunnel-top-jul99.jpg' | relative_url }}" WIDTH="666" HEIGHT="504"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG ALIGN=Top SRC="{{ '/assets/gifs/tunnel-top-jul99.jpg' | relative_url }}" WIDTH="200"
HEIGHT="150"></A>


The plenum contains a variety of flow-conditioning devices that serve to reduce 
the turbulent intensity in the flow; the contraction is designed to further suppress 
turbulence and reduce non-uniformities in the velocity profile.  Because the resulting 
jet is so long, the flow field may be considered two-dimensional across its central 
cross-section; because it is so narrow, the entire jet is really a "boundary layer." 
 This geometry was chosen to make the problem amenable to simultaneous analytical, 
 numerical, and experimental exploration.  The three-way corroborative nature of 
 this approach - which is critical to any formal, extensible control scheme - makes 
 it unique in the MEMS/flow control literature.


Most of our experiments have used flow rates of several meters per second, so the 
Reynolds numbers are quite low (10-300).  This is limited only by the compressed 
air supply, not the apparatus, and we plan to explore higher Re flows as well.  
Using a hotwire anemometer suspended in the flow, as shown below, we have characterized 
the flow, measuring the velocities at different points in the jet:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD> <A HREF="{{ '/assets/gifs/anemom.gif' | relative_url }}" WIDTH="666" HEIGHT="504"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG ALIGN=Top SRC="{{ '/assets/gifs/anemom.gif' | relative_url }}" WIDTH="200"
HEIGHT="150"></A></TD>

<TD> <A HREF="{{ '/assets/gifs/tunnel-edgetop-sep99.gif' | relative_url }}" WIDTH="666" HEIGHT="504"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG ALIGN=Top SRC="{{ '/assets/gifs/tunnel-edgetop-sep99.gif' | relative_url }}" WIDTH="200"
HEIGHT="150"></A></TD>

</TR>
</TABLE>


The results show that the flow is fully developed in and near the nozzle:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD> <A HREF="{{ '/assets/images/profiles.jpg' | relative_url }}" HEIGHT="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG ALIGN=Top SRC="{{ '/assets/images/profiles.jpg' | relative_url }}" 
HEIGHT="250"></A></TD>

<TD> <A HREF="{{ '/assets/images/ndimprof.jpg' | relative_url }}" HEIGHT="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG ALIGN=Top SRC="{{ '/assets/images/ndimprof.jpg' | relative_url }}" HEIGHT="250"></A></TD>

</TR>
</TABLE>

There is actually a small oscillation in the velocity, as you can see from this time-
series image from the hotwire anemometer:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/fluct.gif' | relative_url }}" width="1000"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fluct.gif' | relative_url }}" width="500"></A></TD>
</TR>
</TABLE>


Here, we are plotting the fluctuations of the downstream velocity about its mean.  
The hotwire was situated about 0.5mm off the jet centerline, which is where these 
fluctuations are largest.  This 16.83Hz oscillation is one of the lowest order 
unstable modes, which is being excited intermittently by room air currents.  Its 
amplitude varies, and is very small.


The MEMS actuators that we use to perturb this flow are 1mm by 0.25mm flaps.  They 
consist of two layers of material with different resistances, and they move via the 
bimetallic effect; an applied voltage causes the layers to heat (and thus deform) 
at different rates, so they bend.  This is visible at the left side of the color 
image below:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/gifs/rotated-flap1.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/rotated-flap1.gif' | relative_url }}" height="150"></A></TD>

<TD><A HREF="{{ '/assets/gifs/flap2_4.5vb.gif' | relative_url }}" height="300"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/gifs/flap2_4.5vb.gif' | relative_url }}" height="150"></A></TD>

<TD><A HREF="{{ '/assets/images/microflap-schematic.jpg' | relative_url }}" HEIGHT="250"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/microflap-schematic.jpg' | relative_url }}" HEIGHT="125"></A></TD>

</TR>
</TABLE>


The flaps are mounted on 75um high solder "spacers" using the flip-chip solder 
bonding/alignment process developed by  <A href="http://sprocket.Colorado.EDU/faculty/lee/"> 
Y. C. Lee</A>.  The flaps are not completely rigid, so they bow down a bit in the 
middle.  Our later designs include a set of joist-like structures to stiffen the 
flap and prevent this.  The tip deflection is roughly linear in the applied voltage 
up to a maximum of about 25 microns.  The resonant frequency is about 20Hz; the flaps 
can be driven much faster, but the tip deflection decreases with increasing frequency. 
 The plots below show these two effects in action:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/ampvsvolt.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/ampvsvolt.gif' | relative_url }}" height="150"></A></TD>

<TD><A HREF="{{ '/assets/images/ampvsfreq.gif' | relative_url }}" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/ampvsfreq.gif' | relative_url }}" height="150"></A></TD>

</TR>
</TABLE>


Many of the fundamental instabilities of a flow are born in its <i>boundary layer</i>: 
the region where the flow velocity is changing rapidly.  The intuition behind our control 
strategy is that the boundary layer is the most sensitive part of the flow - and is 
therefore a good place to put an actuator.  For this reason, we mount our flaps along 
the edge of the nozzle, so their bending action expels a small puff of air into the 
side of the jet, which perturbs the velocity.  (The thermocouple effect that controls 
the bending also plays a role here, via the heating of the flap and the resulting 
buoyancy forces.)


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/flap-mounting.jpg' | relative_url }}" WIDTH="800" 
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/flap-mounting.jpg' | relative_url }}" WIDTH="500"></A></TD>

</TR>
</TABLE>


By manipulating these flaps (e.g., in phase, antiphase, etc.), we have been able 
to excite both of the fundamental instabilities (symmetric and antisymmetric) 
across a wide range of frequencies.  


If we force the flow <i>(on one side only, for now)</i> by moving the MEMS flaps 
in a sinusoidal up/down pattern at the natural frequency of 16.83Hz, for instance, 
the flow velocity clearly demonstrates that the corresponding antisymmetric 
instability has been excited:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/fluct2.gif' | relative_url }}" width="1000"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fluct2.gif' | relative_url }}" width="500"></A></TD>
</TR>
</TABLE>


Note the difference in the vertical scales of the two time-series signals, and 
the regular nature of the oscillation in the latter, ascompared to the nonstationary 
signal in the previous time-series image.  Below are the frequency spectra of the 
two signals, which make the difference more obvious (left is unforced and right is 
forced). Again, note the vertical scales on the two plots:


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/fft.gif' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fft.gif' | relative_url }}" height="175"></A></TD>
<TD><A HREF="{{ '/assets/images/fft2.gif' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fft2.gif' | relative_url }}" height="175"></A></TD>
</TR>
</TABLE>


These photographs show what this looks like to the eye:
<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/unforced.gif' | relative_url }}" height="800"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/unforced.gif' | relative_url }}" height="400"></A></TD>
<TD><A HREF="{{ '/assets/images/forced.gif' | relative_url }}" height="800"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/forced.gif' | relative_url }}" height="400"></A></TD>
</TR>
</TABLE>

These are side views of the jet; note the positioning device for the microactuators 
visible in the lower right hand corner.  The left-hand image shows the behaviour of 
the jet when no external forcing was applied.  The flow in this case is laminar and 
featureless.  In contrast, when the microactuators were used to excite the flow, 
large scale vortices developed, entraining surrounding air into the jet, as shown 
in the right-hand image.


The jet responds equally well to other forcing frequencies; below are spectra for a 
few other examples (5Hz on the left and 50Hz on the right):


<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>
<TD><A HREF="{{ '/assets/images/fft4.gif' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fft4.gif' | relative_url }}" height="175"></A></TD>
<TD><A HREF="{{ '/assets/images/fft3.gif' | relative_url }}" height="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/fft3.gif' | relative_url }}" height="175"></A></TD>
</TR>
</TABLE>


The range of frequencies that it is possible to excite is a complicated function of
 Re, geometry, etc.  


One promising application of these ideas and techniques is the design of combustion 
chambers.  Fuel injection systems, whose purpose is to mix fuel and air uniformly, 
are designed in an almost purely experimental fashion.  While designs that emerge 
from such a procedure may perform very well, they are also highly specific: one 
cannot typically generalize from their properties to solve another fuel injector 
design problem.  Moreover, a system designed for one set of conditions (e.g., 55mph) 
is not necessarily optimal for a different situation (e.g., I-90 in Montana on a warm, 
dry day).  The knowledge that we gain from this research project will hopefully not 
only let us design chambers that can adapt for optimum mixing under different conditions, 
but also help us understand some of the <I>general</I> principles behind combustion chamber 
design.


This is a difficult project, and it calls upon advanced techniques from several different 
fields:
<ul>
    <li>
    fluid dynamics
    </li>
    <li>
    numerical modeling and data assimilation (viz., using sensor data to perform 
    online correction of a running model)
    </li>
    <li>
    nonlinear control
    </li>
    <li>
    MEMS processing and design
    </li>
</ul>

The engineering is also formidable - a custom nozzle and wind tunnel, micromachined 
flaps, laser flow visualization, data acquisition and control through a PC, etc. - 
but the preliminary results are quite promising.


Control strategies require models, but numerical models for predicting fluid flows 
and other complex systems have heavy computational demands and cannot track 
unmodelled effects like perturbation or drift. Meteorologists often address this 
tracking problem by "assimilating" data into their numerical models to keep them on
 track.  We use this technology to model our jet, correcting a 2D point-vortex model 
 with positions and strengths of the actual vortices in the jet, extracted from the 
 PIV data shown above.


Exploring data assimilation <i> in a laboratory setting</i> is interesting & important 
for two reasons.  First, while simulated experiments with well-characterized noise---
the "perfect-model experiments" that are common in the data-assimilation literature---
are very useful, real-world effects like drift almost invariably violate one's expectations 
and intuitions.  Since the task of data assimilation is to help solvers track these 
kinds of effects, understanding them---not uncertain simulations of them---is critical. 
Second, in our controlled environment, we can isolate, explore, and replicate physical 
and numerical effects.  <i> Any</i> model could, potentially, be corrected with data in 
order to compensate for its inherent approximations, but doing this requires a thorough 
understanding of how different solvers react to dynamic data injection.  


See the papers listed below for more details on these points.


<h3> People</h3>

<ul>
    <li>
    <TD><A HREF="{{ '/assets/gifs/liz-and-tom.jpg' | relative_url }}" HEIGHT="666"
    onMouseMove="window.status='Show this image a little larger'; return
    true"><IMG ALIGN=Middle SRC="{{ '/assets/gifs/liz-and-tom.jpg' | relative_url }}" HEIGHT="150"></A>
    <A href="http://www.cs.colorado.edu/~tomp"> Tom Peacock</a> and <A
    href="{{ '/' | relative_url }}">Liz Bradley</a><BR CLEAR=ALL>
    </TD> Tom was a postdoc at Colorado from 1/98 through 5/00; he is
    currently an Associate Professor of Mechanical Engineering at MIT.
    </li>
    <li>
    <A href="http://sprocket.Colorado.EDU/faculty/hertzberg/"> Jean
    Hertzberg</A>, Associate Professor of Mechanical Engineering, is
    the project fluids guru.
    </li>
    <li>
    <A href="http://sprocket.Colorado.EDU/faculty/lee/">
    Y. C. Lee</A>, Professor of Mechanical Engineering, and Ph.D. student
    Zhichun Ma designed, built, and mounted the MEMS flaps.
    </li>
    <li>
    A wonderful crew of undergraduates in Mechanical and Aerospace
    Engineering helped out in the lab, including Matt Culbreth, John
    Giardino, Jesse Negretti, Sven Nuesken, John Nord, Jeremy Ralph, Alex
    Renger, and Roscoe Schenk.
    </li>
    <li>
    Natalie Ross finished her Ph.D. in May 2008 on the jet model.
    She used point-vortex model and developed a novel data-assimilation
    strategy for correcting that model in real time using PIV data from
    the jet.
    </li>
    <li> Matthew Schwieterman and John Giardino worked on this project for
    their M.S. degrees in Mechanical Engineering.
    </li>
</ul>


<h3>Support</h3>

<ul>
    <li>
    This material is based upon work supported by the National
    Science Foundation under Grant Numbers 0083004 and CTS-0114109, an
    equipment grant from Agilent, and by a Packard Fellowship in Science
    and Engineering from the David and Lucile Packard Foundation.  Any
    opinions, findings, and conclusions or recommendations expressed in
    this material are those of the author(s) and do not necessarily
    reflect the views of these organizations.
    </li>
</UL>


<h3> Papers and abstracts</h3>

<ul>
    <li>
    J. Giardino, J. Hertzberg, and E. Bradley, "A Calibration
    Procedure for Millimeter-Scale Stereomicroscopic Particle Image
    Velocimetry," in press, <i>Experiments in Fluids</i>
    </li>
    <li>
    Z. Ma, E. Bradley, T. Peacock, J. Hertzberg, and Y-C. Lee, <A
    href="{{ 'papers/zhichun-ieee03.pdf.gz' | relative_url }}">"Solder-assembled large MEMS flaps
    for fluid mixing,"</a> <I>IEEE Transactions on Advanced Packaging</I>,
    <b>26</b>268-276 (2003)
    </li>
    <li>
    T. Peacock, J. Hertzberg, Y-C. Lee, and E. Bradley,
    "Forcing a Planar Jet Flow with MEMS," <i> Experiments in Fluids</i>
    <b> 37</b>:22-28 (2004)
    </li>
    <li>
    N. Ross, E. Bradley, and J. Hertzberg, <A
    href="{{ '/assets/papers/NRqr06.pdf' | relative_url }}"> "Dynamics-Informed Data Assimilation in a
    Qualitative Fluids Model,"</a> <i> QR-06 (20th International Workshop
    on Qualitative Reasoning about Physical Systems)</i>, Hanover NH; July
    2006
    </li>
    <li>
    N. Ross, <A
    href="{{ '/assets/papers/NR-thesis.pdf' | relative_url }}"> 
    <i>Understanding the Dynamics of Point-Vortex Data
    Assimilation</i></a> Ph.D. thesis, University of Colorado, May 2008.
    </li>
    <li>
    N. Ross, J. Hertzberg, and E. Bradley, "Discretization of the
    Vorticity Field of a Planar Jet," <i> Experiments in Fluids</i> <b>
    49</b>:1161--1175 (2010)
    </li>
</ul>


<h3> Links</h3>

<ul>
    <li>
    <a href="http://domri.com/upravlinnya-2d-jet/">Ukrainian
    translation of this page</a> by <a href="http://domri.com/">Domri team</a>
    </li>
    <li>
    The <A href="http://vip.cs.utsa.edu/flames/overview.html">
    Combustion Chaos Group </a> at the University of Houston.
    </li>
    <li> Julio Ottino's <A
    href="http://www.chem-eng.nwu.edu/mixing/">chaotic mixing group</A> at
    Northwestern.
    </li>
    <li> <A href="http://ho.seas.ucla.edu/">Chih-Ming Ho's page at
    UCLA</A>, complete with electron-microscope movies of moving MEMS
    flaps.
    </li>
    <li> <A href="http://mems.mcnc.org">Cronos Integrated Microsystems</A>
    (nee MCNC) and <A href="http://www.mosis.org">MOSIS</A>, MEMS
    fabrication houses.  We use Cronos's MUMPS process to make our flaps.
    </li>
    <li>
    The <A href="http://mems.isi.edu">MEMS clearinghouse</A>, which
    includes a searchable bibliography.
    </li>
</ul>

<BR>

<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   
<BR>

Copyright 2000, Elizabeth Bradley and Thomas Peacock.

All rights reserved.  Many of these images appear in other publications
and may not be reproduced without appropriate citation.

