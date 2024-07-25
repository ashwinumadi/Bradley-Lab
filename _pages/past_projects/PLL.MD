---
layout: general_content
permalink: /past_projects/pll/
---
<h2>
Using Chaos to Broaden the Capture Range of the Phase-Locked Loop
</h2>


Phase-locked loops (PLLs) are a common and useful family of circuits;
their function is to hunt for and synchronize to an external sine wave
signal.  Every radio contains a PLL that helps it "lock on" to the
closest station.  The range over which the circuit can accomplish this
task, called the <i>capture range</i>, is an important design
parameter - consider, for instance, the button on your car radio that
shifts its range from "city" (a narrow band that lets the circuit
capture one radio station from all of the closely spaced stations in
an urban area) to "country" (a wide band that gives the circuit more
leeway in which to hunt).


Chaos can be used to broaden the capture range, improving the design
of the circuit.  Specifically, we judiciously drive the loop into a
specific chaotic regime, using the denseness of the system's chaotic
attractor to establish the control-theoretic property known as <i>
reachability</i> for the loop's locked state, thereby expanding the
capture range out to the original lock range limits.


<h3> People </h3>
<ul>
  <li>
  Doug Straub, a Ph.D. student in Electrical and Computer
  Engineering, verified this idea experimentally as his final project in
  <a href="{{ '/courses/chaotic_dynamics/' | relative_url }}">CSCI 6446</a>.
  </li>
  <li>
  <a href="{{ '/' | relative_url }}"> Prof. Liz Bradley</a>, project leader.
  </li>
</ul>

<h3> Papers </h3>
<ul>
  <li>
  E. Bradley, <a href="https://ieeexplore.ieee.org/document/251819"> "Using Chaos to
  Improve the Capture Range of a Phase-Locked Loop,"</a> <i> IEEE
  Transactions on Circuits and Systems</i>, <b> 40</b>:808-818 (1993).
  </li> <!-- CHECK THIS -->
  <li>
  E. Bradley and D. Straub, "Chaos as a Design Tactic: Broadening
  the Capture Range of the Phase-Locked Loop," <i> Proceedings of the
  IEEE International Symposium on Circuits and Systems</i>, Seattle WA;
  May 1995.
  </li>
  <li>
  E. Bradley and D. Straub, <a href="{{ '/resources/pll-casII/' | relative_url }}"> "Using
  Chaos to Improve the Capture Range of a Phase-Locked Loop:
  Experimental Verification,"</a> <i> IEEE Transactions on Circuits and
  Systems</i>, <b> 43</b>:914-922 (1996).
  </li>
</ul>


<h3> Support</h3>
<ul>
  <li>
  This material is based upon work supported by the National
  Science Foundation under grant National Young Investigator Award
  CCR-9357740.  Any opinions, findings, and conclusions or
  recommendations expressed in this material are those of the author(s)
  and do not necessarily reflect the views of the National Science
  Foundation.
  </li>
</ul>

<br>
<img SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   
