---
layout: general_content
permalink: /current_projects/bees/
---

<h2>Collective behavior in honeybees</h2>


<h3>Project Description</h3>


Division of labor, a hallmark of honeybee behavior, allows the
assignment of different tasks to different individuals to improve
efficiency.  An acute instance of a division of labor occurs as part
of their food collection process, where some forager bees collect food
and share via food regurgitation, essentially “charging” nestmates who
do not have access to a nearby energy source.  This process, termed
Trophallaxis, allows fast and efficient dissemination of nutrients and
is crucial for the colony’s survival.  The image below shows an
experiment involving the introduction of a number of "feeder" bees,
marked with purple dots, into a group of bees that have been deprived
of food.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/trophallaxis-instance.jpg' | relative_url }}" width="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/trophallaxis-instance.jpg' | relative_url }}" width="300"></A></TD>

</TR>
</TABLE>

This food-exchange behavior causes a dramatic shift in the morphology
of the collection of bees.  Initially, the individuals are distributed
sparsely across the arena.  After the full bees are introduced,
clusters appear.  Eventually, the clusters dissipate:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/trophallaxis-experiment.jpg' | relative_url }}" width="700"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/trophallaxis-experiment.jpg' | relative_url }}" width="600"></A></TD>

</TR>
</TABLE>

A bee that just finished feeding a nestmate faces a dilemma: should it
feed another nestmate at the same spot on the honeycomb or move to
feed a nestmate at a new place?  From statistical physics, we reasoned
that moving to a new location to feed nestmates would “seed” new
feeding events and thereby contribute to mixing and efficient food
dissipation.  We have developed an agent-based model to explore this
hypothesis and performed a series of simulations to calculate the food
distribution and its uniformity across the whole colony.  Below is a
series of snapshots showing the evolution of this model.  The color of
each dot represents the food level of that bee-agent.

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="{{ '/assets/images/trophallaxis-abm.jpg' | relative_url }}" width="500"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="{{ '/assets/images/trophallaxis-abm.jpg' | relative_url }}" width="400"></A></TD>

</TR>
</TABLE>

This provides a useful benchmark to assess the level at which the food
distribution rates and efficiency are dependent on parameters such as
the fraction of full bees, the movement patterns of each agent, and
the duration and amount of food transfer at each interaction.  Our
results suggest that, to achieve the most efficient food distribution,
a full bee may not always choose to feed its immediate neighbors but
rather continue her motion to reach a farther bee and share her food
at a later time.  This pattern of movement ensures that all of the
bees, regardless of their position in the colony, will be fed
efficiently.  These results are currently guiding a set of
experiments, intending to link the model to experimental observations
by systematically modulating the density of bees in the system and
fraction of hungry bees.


Understanding the design principles of food distribution networks in
honeybee colonies is not just a problem in ecology or biology, but
also one in mathematics and physics, given the exchange of energy and
information between individuals as well as between individuals and
their physical environment.  As this research grows, it has the
potential to lead to further insights into the caste systems in
honeybee behavior, work distribution within the colony, and energy use
of clustered bees over the winter.  This has the potential not only to
contribute to the future health of honeybee populations, but to inform
engineering applications (e.g., distributed charging in swarm
robotics).


This project is led by Professor Orit Peleg.


<h3> People</h3>
<ul>
    <li>
    PhD student Golnar Gharooni Fard
    </li>
    <li>
    Boulder High School student Charlotte Gorgemans
    </li>
    <li>
    <a href="{{ '/' | relative_url }}"> Liz Bradley</a>, Professor of Computer
    Science.
    </li>
    <li> 
    <a href="https://www.colorado.edu/cs/orit-peleg"> Orit Peleg</a>,
    Assistant Professor of Computer Science.
    </li>
</ul>


<h3> Papers, posters, and talks</h3>
<ul>
    <li> G. Gharooni Fard, V. Deshmukh, E. Bradley, C. Topaz, and
    O. Peleg,
    <a href="https://sinews.siam.org/Details-Page/a-persistent-homology-approach-to-characterize-honeybee-behavior-during-food-exchange">"A
    Persistent Homology Approach for Characterizing Honeybee Behavior
    during Food Exchange,"</a> SIAM News, December 2021.  This is an
    expanded version of a talk with the same title that was presented at
    the <a href="https://meetings.siam.org/sess/dsp_talk.cfm?p=113076">SIAM
    Conference on the Applications of Dynamical Systems</a>, Snowbird, UT,
    (2021).
    </li>
    <li> G. Gharooni Fard, V. Deshmukh, E. Bradley, C. Topaz, O. Peleg,
    <a href="{{ '/assets/bees/IMSI_TDA_poster.pdf' | relative_url }}">
    "A Persistent Homology Approach for Characterizing Honeybee Behavior
    during Food Exchange,"</a>,
    the <a href="https://www.imsi.institute/topological-data-analysis/#schedule">IMSI
    Conference on Topological Data Analysis</a> (2021).
    </li>
    <li> G. Gharooni Fard, E. Bradley, C. Gorgemans, and
    O. Peleg, <a href="https://ggfardcom.files.wordpress.com/2020/10/iros-poster-2020.pdf">"An
    Integrated Experimental-modeling Approach to Resource Sharing in
    Honeybee Swarms,"</a> the
    <a href="http://gravishlab.ucsd.edu/iros2020/">Robotic-inspired
    Biology workshop</a> at the International Conference on Intelligent
    Robots and Systems, IROS (2020).
    </li>
    <li> G. Gharooni Fard, E. Bradley, and O. Peleg,
    <a href="https://direct.mit.edu/isal/proceedings/isal2020/32/324/98457">
    "Data-Driven Modeling of Distributed Resource Sharing in Honeybee
    Swarms,"</a> Proceedings of the Artificial Life (ALIFE) Conference,
    32, 324-332 (2020).
    </li>
    <li> G. Gharooni Fard, E. Bradley, and O. Peleg, "Data-Driven Modeling
    of Distributed Resource Sharing in Honeybee
    Swarms," <a href="http://2020.conference.ci/"> ACM Collective
    Intelligence</a> (2020).  Search for the paper number (57) to get the
    extended abstract and a link to the talk.
    </li>
    <li> G. Gharooni Fard, E. Bradley, C. Gorgemans, and
    O. Peleg, <a href="https://meetings.siam.org/sess/dsp_talk.cfm?p=99510">
    "On the Efficiency of Food Distribution via Trophallaxis in Honeybees:
    An Agent-Based Model Approach,"</a> the SIAM Conference on the
    Applications of Dynamical Systems, Snowbird, UT, (2019).
    </li>
    <li>
    A feature about this project and its people, entitled
    <a href="https://www.colorado.edu/engineering/2021/07/08/it-takes-hive-community-volunteers-honey-bee-research">
    "It takes a hive: community volunteers in honey bee research"</a>, from
    the University of Colorado College of Engineering and Applied Science.
    </li>
</ul>


<h3> Links</h3>
<ul>
    <li>
    The <a href="https://www.peleglab.com">Peleg Lab website</a>
    </li>
    <li>
    The <a href="https://lab.igb.illinois.edu/robinson/">Robinson Lab
    website</a>
    </li>
    <li>
    The <a href="http://www.weizmann.ac.il/complex/feinerman/">Feinerman
    Lab website</a>
    </li>
    <li> The <a href=" http://adrialeboeuf.com/">LeBoeuf Lab website</a>,
    which has a <a href="https://youtu.be/e84sjk8z3lE">great video
    explaining trophallaxis for lay audiences</a>
    </li>
</ul>


<h3> Support</h3>
<ul>
    <li> This material is based upon work supported in part by the
    <a href="https://www.colorado.edu/biofrontiers/">
    BioFrontiers Institute</a> at the University of Colorado and in part
    by the NSF under contract #2014212.  Any opinions, findings, and
    conclusions or recommendations expressed in this material are those of
    the author(s) and do not necessarily reflect the views of the NSF.
    </li>
</ul>

<BR>

<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   
