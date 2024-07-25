---
layout: general_content
permalink: /past_projects/computer-dynamics/
---
<h2>The Nonlinear Dynamics of Computer Performance</h2>


<h3>Project Description</h3>

Though it is not necessarily the view taken by those who design them, 
modern computers are deterministic nonlinear dynamical systems, and it 
is both interesting and useful to treat them as such.  We have showed 
that the dynamics of a computer can be described by an iterated map 
with two components, one dictated by the hardware and one dictated by 
the software.  Using a custom measurement infrastructure to get at the 
internal variables of these million-transistor systems without disturbing 
their dynamics, we gathered time-series data from a variety of simple 
programs running on two common microprocessors, then used delay-coordinate 
embedding to study the associated dynamics.  We found strong indications, 
from multiple corroborating methods, of a
low-dimensional attractor in the dynamics of a simple, three-instruction 
loop running on an Intel Core2-based machine, including the first experimental 
evidence of chaos in real computer hardware.  When we ran the same program 
on an Intel Pentium 4-based machine, the dynamics became periodic; when we 
reordered the instructions in the program, extra loops appeared in the 
attractor, increasing its dimension from 0.8 to 1.1 and decreasing its largest 
Lyapunov exponent by 25%.  When we <i> alternated</i> between the two programs, 
the reconstructed trajectory alternated between the\ corresponding attractors, 
leading us to a view of a computer as a dynamical system operating under the 
influence of a series of bifurcations induced by the code that it is running.



<b>Cache-miss dynamics of a simple, three-instruction loop running on a Core 
2-based machine are chaotic:</b> <br> <img style="align:top;" src="{{ '/assets/computer-dynamics/col-major-C2.jpg' | relative_url }}">
<br>
<br>
<b>Cache-miss dynamics of the same code running on a Pentium-4 based machine 
are periodic:</b> <br> <img style="align:top;" src="{{ '/assets/computer-dynamics/col-major-P4.jpg' | relative_url }}">
<br>

Somewhat surprisingly, the topological dimension of the embedding space was 
similar (m=10 to 15) in all of these experiments, which is probably a reflection 
of the constraints imposed on these systems by the x86 design specification that 
both machines follow.  All of these low dimensions - attractors with dimension of 
approximately 1 in state spaces with a smallish number of axes - are somewhat 
surprising in a system as complex as a microprocessor.  Computers are organized 
by design into a small number of tightly coupled subsystems, however, which 
greatly reduces the effective number of degrees of freedom in the system.


These results, which are addressed at more length in the 2009 <i>CHAOS</i> 
paper cited below, are not only interesting from a dynamics standpoint; they 
are also important for the purposes of computer simulation and design.  These 
engineered systems have grown so complicated as to defy the analysis tools that 
are typically used by their designers: tools that assume linearity and stochasticity, 
and essentially ignore dynamics.  The ideas and methods developed by the nonlinear 
dynamics community, applied and interpreted in the context of the framework proposed 
here, are a much better way to study, understand, and design modern computer systems.


If computers are deterministic systems, then one should be able to use deterministic 
forecast rules to predict their behavior.  We have explored a couple of deterministic 
modeling schemes, which are described at more length in the <i>IDA '11</i> paper cited 
below.  It turns out that these models produce accurate forecasts in some cases, 
but not all.  The memory and processor loads of some simple programs are easy to predict, 
for example, but those of more-complex programs like gcc are not.  Accurate forecasts of 
these quantities, if one could construct them, could be used to improve computer design.  
If one could predict that a particular computational thread would be bogged down for the
 next 0.6 seconds waiting for data from main memory, for instance, one could save power 
 by putting that thread on hold for that time period (e.g., by migrating it to a processing 
 unit whose clock speed is scaled back).


We conjecture that, in practice, complexity can effectively overwhelm the predictive power 
of deterministic forecast models.  To explore that, we build models of a number of performance 
traces from different programs running on different Intel-based computers.  We then\ calculate 
the <i>permutation entropy</i> - a temporal entropy metric that uses ordinal analysis - of 
those traces and correlate those values against the prediction success.  A paper on these 
results is currently in review.


One of the challenges in analyzing or modeling computer performance data using dynamical-systems 
techniques is the nonstationary nature of the data.  We approach this notoriously challenging 
problem using <i> computational topology</i>: leveraging fundamental properties like continuity 
and connectedness to pull apart different regimes in these complicated signals:

<img style="align:top;" src="{{ '/assets/computer-dynamics/IFS-separation.jpg' | relative_url }}">

These algorithms, and their results, are described at more length in the 2012 <i>CHAOS</i> 
paper cited below.


<h3> People</h3> 

<ul> 
        <li>
        The whole project grew out of an idea by <a href="http://www-plan.cs.colorado.edu/diwan/">
        Amer Diwan</a> (who is now at <a href="https://plus.google.com/107356435859516946835/posts">
        Google</a> even though the cs.colorado.edu webpage suggests that he is still here in Boulder).
        </li>
        <li>
        <a href="http://research.microsoft.com/en-us/people/toddm/">Todd Mytkowicz</a>, who is 
        now at Microsoft Research, did the first round of work on this project as part of his 
        PhD thesis.
        </li>
        <li>
        Zach Alexander, who is now at Seagate, developed topology-based techniques for analyzing 
        computer-performance data as part of his PhD thesis.
        </li>
        <li>
        PhD student <a href="http://csel.cs.colorado.edu/~garlanjt/">Joshua Garland</a> is developing 
        forecast models that will allow us to <i>predict</i> those dynamics.
        </li>
        <li>
        <a href="{{ '/' | relative_url }}"> Liz Bradley</a>, Professor of Computer Science.
        </li>
</ul> 


<h3> Papers and talks</h3>
<ul>
        <li>
        Z. Alexander, <i>A Topology-Based Approach for Nonlinear Time-Series Analysis with Applications 
        in Computer Performance Analysis</i>, Ph.D. thesis, University of Colorado, 2012.
        </li>
        <li> 
        Z. Alexander, T. Mytkowicz, A. Diwan and E. Bradley, "Measurement and Dynamical Analysis of Computer
         Performance Data," <i>IDA-10 (Proceedings of the 9th International Symposium on Intelligent Data 
         Analysis)</i>, Tucson; May 2010; Springer <i>Lecture Notes in Computer Science</i> volume 6065
        </li>
        <li>
        Z. Alexander, E. Bradley, J. Garland and J. Meiss, "Iterated Function System Models in Data Analysis: 
        Detection and Separation," <i> Chaos</i> <b> 22</b>:023103; doi: 10.1063/1.3701728 (2012)
        </li>
        <li>
        J. Garland, R. James and E. Bradley, "Determinism, Complexity, and Predictability in Computer 
        Performance."  
        Preprint available at <a href="http://arxiv.org/abs/1305.5408">arxiv</a>.
        </li>
        <li>
        J. Garland and E. Bradley, "Predicting Computer Performance Dynamics," <i>IDA-11 (Proceedings of 
        the 10th International Symposium on Intelligent Data Analysis)</i>, Porto, October 2011.  
        pringer <i> Lecture Notes in Computer Science </i> volume 7014
        </li>
        <li>
        J. Garland and E. Bradley, "On the importance of nonlinear modeling in computer performance 
        prediction," <i>IDA-13 (Proceedings of the 12th International Symposium on Intelligent 
        Data Analysis)</i>, London, October 2013.  In review.  Preprint available at <a href=
        "http://arxiv.org/abs/1305.4924">arxiv</a>.
        </li>
        <li>
        T. Mytkowicz, E. Bradley, and A. Diwan, "Computers Are Dynamical Systems," <i> Chaos</i> 
        <b>19</b>:033124; doi:10.1063/1.3187791 (2009)
        </li>
        <li>
        A link to a recording of a <a href="http://sea.ucar.edu/event/chaos-computer-performance">
         talk about this work</a> that I gave at NCAR in the fall of 2012.
        </li>
</ul>


<h3> Support</h3>

<ul>
        <li>
        This material is based upon work supported by the National Science Foundation 
        under grant numbers SMA-0720692 and CMMI-1162440. Any opinions, findings, and 
        conclusions or recommendations expressed in this material are those of the author(s) 
        and do not necessarily reflect the views of the National Science Foundation.
        </li>
</ul>

<br>
<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   