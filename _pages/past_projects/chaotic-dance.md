---
layout: general_content
permalink: /past_projects/chaotic-dance/
---
<h2>Using mathematics to generate choreographic variations</h2>

<img align=top src="{{ '/assets/images/concantation-live.jpg' | relative_url }}">

<!--
<p>
Below are some translations of this page.  <b>Caveat:</b> this content
has not been checked to see if it matches the original.
<ul>

<li><a href="https://www.chameleonjohn.com/translations/chaotic-dance-Indonesian">Indonesian</a>
courtesy of <a href="http://www.ChameleonJohn.com/">ChameleonJohn</a>

<li><a href="http://www.azoft.com/people/seremina/edu/chaotic-dance-rom.html">Romanian</a>

<li>
<a
href="http://www.pkwteile.de/wissen/mit-hilfe-der-mathematik-zu-choreographischen-variationen-erzeuge">German</a> courtesy of <a
href="http://www.pkwteile.de">pkwteile</a>

<li>
<a href="http://worldartsme.com/archives/134">Russian</a> courtesy of
Alexander Nikiforov of the Kazan Technical University  

<li>
<a href="http://hunsci.com/matematika-generalni-koreografiai-variaciok/">Hungarian</a>
courtesy of <a href="http://hunsci.com/">Szabolcs Csintalan</a>

<li>
<a href="http://www.travel-ticker.com/translations/chaotic-dance">Irish</a>
courtesy of  <a href="http://www.travel-ticker.com/">Travel-Ticker.com</a>.

<li>
<a href="https://www.homeyou.com/~edu/gerar-variacoes-coreograficas">Portuguese</a>
courtesy of  <a href="https://www.homeyou.com/~edu/">homeyou.com</a>.

<li>
<a href="https://bestreviewsbase.com/translations/#using-mathematics-to-generate-choreographic-variations:UK">Ukrainian
</a>

</ul>
-->

<h3>Project Description</h3>

In a 1996 paper (<i>Chaos</i> <b>6</b>:95-107), Diana Dabby (diana.dabby@olin.edu)
 describes a technique that uses a chaotic mapping to generate variations on a 
 musical piece.  The basic idea is to map the pitch sequence onto a chaotic trajectory; 
 this establishes a symbolic dynamics that links the attractor geometry and the structure
  of the musical piece.  One then generates a <i> new </i> chaotic trajectory and inverts
   the mapping to generate a new pitch sequence.  Sensitive dependence on initial
   conditions guarantees that the variation is different from the original; the 
   attractor structure and the symbolic dynamics guarantee that the two resemble
    one another in both esthetic and mathematical senses.
<br>
The program <b>Chaographer</b> implements a similar scheme for dance. The core of
 the chaotic mapping technique is the same, but many of the issues and tactics -
  together with much of the mathematics - are very different.  The symbol set is 
  one obvious distinction.  There is a simple, well-established notational scheme 
  for music, but body positions are much harder to represent; we use representational 
  techniques from rigid-body mechanics to solve this problem.  The mathematics of the
   mapping is also very different; Dabby uses a simple metric on a one-dimensional
    projection of the trajectory to define cells, whereas we work with a full, 
    formal symbolic dynamics derived using computational geometry techniques.  
    The amount of human intervention that is required is also different.  In Dabby's
     scheme, both input and output are pitch sequences; a human expert translates these 
     sequences to and from sound.  Our variation generator takes an animation as input
      and generates an animation as output.
<br>
An original performance piece using six Chaographer variations and a human dancer,
 entitled "Con/cantation: chaotic variations," premiered in Boston in April of 2007,
  and has appeared since then in Boulder and Santa Fe.  A still shot appears at the 
  top of this page.

<b>An original dance:</b>
<br>
<img align=top src="{{ '/assets/gifs/non-shuffled-sm.gif' | relative_url }}">
<p>
<br>
<b>A chaotic variation on that piece:</b>
<br>
<img align=top src="{{ '/assets/gifs/shuffled-sm.gif' | relative_url }}">

<br>
Musical instruments can play arbitrary pitch sequences, but kinesiology and dance 
style impose a variety of constraints on consecutive body postures.  To smooth any
 abrupt transitions introduced by the chaotic mapping, we have developed a class 
 of corpus-based interpolation schemes that capture and enforce the
dynamics of a dance genre.
<br>
The task of automatically generating <i> stylistically consonant</i> sequences 
between arbitrary body postures is quite difficult.  We use a corpus of human 
movement to build a set of 44 weighted, directed graphs, one for each joint in 
the human body.  Each vertex is joint position and each edge represents a transition
 between the two vertices that it links.  Edges are weighted according to how often 
 the corresponding transitions are observed in the corpus.  Interpolating between 
 two body positions is equivalent to finding the shortest ensemble-path through this
  set of graphs between the states that correspond to those positions.  We use A* search
   to implement this, along with a special scoring function that enforces inter-joint
    coordination constraints (i.e., that the position of the pelvis influences what 
    the hips are allowed to do.)  These <i> machine learning</i> techniques are implemented
     in a program called <b>MotionMind</b>.
<br>
<b>Chaographer</b> and <b>MotionMind</b> draw on techniques from nonlinear dynamics,
 numerical analysis, graph theory, statistics, rigid-body mechanics, and machine
  learning, as well as graphics and animation.
<br>

<h3>Animated Movement Sequences</h3>

<br>
If you're running Mac OSX and using the Safari browser, you can skip the 
OS/tool-specific "how to" info in the following paragraph, because Apple 
did it right and that combination just <i> works</i>.

<br>
Some of these clips are in avi format and some are in mpeg format.
<!--
Many of the files are quite large, and so have been compressed with
gzip to save space.  To decompress a compressed file, run <a
href="http://www.gzip.org/"> gunzip</a>.  If you're having trouble,
email me and I'll send you an uncompressed version.  
-->
Your browser should understand both of these formats.  On Macs and PCs, you can 
download them and play them using Sparkle or QuickTime. To play the mpeg files 
using QuickTime, you'll need the mpeg extension; see the <a 
href="http://quicktime.apple.com/"> QuickTime site</a> to find out how to obtain 
the player and/or the mpeg extension if your browser doesn't handle it automatically.  
QuickTime is only available for Windows and Mac-OS; if you're on a Unix box, you'll 
need to use an mpeg viewer like <b>mpeg_view</b>. Click <a 
href="http://www.mpeg.org/MPEG/MPEG-video-player.html">here</a> for a page that has 
links to a variety of mpeg viewers for different architectures and operating systems.

<br>
Note that the performance of all movie-playing software degrades ungracefully if you're 
low on memory or if you have many other applications running.

<br>
The original sequences shown here were generated with the aid of a commercial human 
animation package called <a href="http://www.credo-interactive.com/products/lifeforms/index.html">
Life Forms</a>.  (Another good commercial figure animation package is <a 
href="http://www.e-frontier.com/article/articleview/1597/1/281?sbss=281"> Poser</a>.)


<h4> Chaotic variations generated by Chaographer</h4>

<ul>
<li> Some original pieces:
<ul>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/macarena-orig.mpeg">macarena</a>
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/adagio-orig.avi">ballet adagio</a>
    composed by Nadia Rojas-Adame
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/kenpo-orig.mpeg">kenpo karate kata</a>
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/allthree-orig.mpeg">medley</a>: 
    three ballet jumps, one kenpo kata, and twice through the macarena
    </li>
</ul>
</li>

<li> Variations generated by Chaographer using the Lorenz equations:
<ul>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/macarena-lorenz.mpeg"> 
    chaotic macarena variation</a>\
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/lorenz-adagio.avi">chaotic 
    variation of the ballet adagio</a>: note the abrupt transitions...ouch! 
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/kenpo-lorenz.mpeg"> chaotic 
    kenpo karate kata variation </a>
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/allthree-lorenz.mpeg"> chaotic 
    variation of the three-piece medley</a>
    </li>
</ul>
</li>

<li> Variations generated by Chaographer using the Rossler equations:
<ul>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/macarena-rossler.mpeg"> chaotic
     macarena variation</a>
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/kenpo-rossler.mpeg"> chaotic 
    kenpo karate kata variation </a>
    </li>
    <li>
    <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/allthree-rossler.mpeg"> chaotic 
    variation on the three-piece medley</a>
    </li>
</ul>
</li>

<li>
A <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/allthree-random.mpeg"> <i>randomly 
shuffled</i> version of the medley</a>, for contrast.  Note how different this is from the two 
chaotic variations on the medley that appear above.
</li>
</ul>

<h4>Interpolated "tweening" sequences generated by MotionMind:</h4>
<br>

MotionMind finds <i> stylistically consonant</i> interpolation sequences between two positions.  
If it is given a corpus of ballet, for instance, and the following two poses:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/11-interp-good-49start.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/11-interp-good-49start.jpg"
height="200"></A></TD>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/11-interp-good-49finish.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/11-interp-good-49finish.jpg"
height="200"></A></TD>

</TR>
</TABLE>

...it produces <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/11-interp-good-49.avi">
this short sequence</a>.  Note the starting and ending positions, and the balletic dynamics of 
the motion.

<br>
(These images show a red figure on a black background, and they don't show up well on some monitors.  
If you have problems making out the figure, please try changing your brightness and contrast, 
or turning out the room lights.)
<br>

<h4>Some out-takes that bring out interesting effects:</h4>
<br>
If the corpus that MotionMind uses is sparse, it may have trouble finding a path between a 
given pair of positions.  This manifests in an interesting way: sequences that are stylistically 
consonant but very long.  Presented with these two positions, for instance:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/12-interp-bad-30start.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/12-interp-bad-30start.jpg"
height="200"></A></TD>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/12-interp-bad-30finish.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/12-interp-bad-30finish.jpg"
height="200"></A></TD>

</TR>
</TABLE>

MotionMind produces <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/12-interp-bad-30.avi">
this sequence</a>, which
- though it starts and ends in the right positions and looks balletic
- contains a lot of "extra" motion.  This circuitousness arises from
the sparse connectivity of the joint transition graphs built from the corpus.  

<br>

Coordination between joints is also an important constraint in human movement: one that, when 
violated, produces visibly awkward results. Click <a
 href="https://home.cs.colorado.edu/~lizb/chaotic-dance/13-!coord.avi">here</a> to see an 
 example of what happens if MotionMind is applied to a ballet corpus, but with its inter-joint 
 coordination search heuristics disabled so it does not enforce coordination. 

<br>

In order to build finite representations of these movement sequences, we had to discretize 
the angles of the joints.  This is analogous to ``snapping'' objects to a grid in computer 
drawing applications, but it has some surprising effects when used to quantize human motion. 
The animation <a href="https://home.cs.colorado.edu/~lizb/chaotic-dance/discretized-adagio.avi">
here</a> shows a quantized version of a ballet adagio in blue, with the original dance 
superimposed upon it in red.  Interestingly enough, side-by-side comparisons of the 
individual frames do not show up such striking differences.  The human visual perception 
system appears to be very sensitive to small variations in joint angles in a <i> 
moving</i> figure: small changes seem to violate the "motif" of the motion.

<h3>How to obtain better corpora: Motion capture</h3>

Though its results are quite satisfying, animating a sequence in Life Forms is a slow 
and painful process.  We're currently working with <a href="http://www.cs.cmu.edu/~jkh/">
Jessica Hodgins</a> and the <a href="http://mocap.cs.cmu.edu">CMU motion-capture lab</a> 
to obtain longer sequences and build richer corpora.  This process involves sticking 
reflective balls to a dancer's joints, surrounding him or her with 12 cameras that 
take 120 snapshots per second, and then reconstructing a 3D model of the body position 
in each snapshot:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/david.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/david.jpg" height="200"></A></TD>

</TR>
</TABLE>

The resulting data, stored in ASF/AMC format, can be rendered with a variety of 
tools to produce different kinds of animations:

<TABLE BORDER=0 CELLSPACING=8 CELLPADDING=8>
<TR ALIGN=Center>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/pinhead.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/pinhead.jpg" height="200"></A></TD>

<TD><A HREF="https://home.cs.colorado.edu/~lizb/chaotic-dance/rendered.jpg" height="400"
onMouseMove="window.status='Show this image a little larger'; return
true"><IMG SRC="https://home.cs.colorado.edu/~lizb/chaotic-dance/rendered.jpg" height="200"></A></TD>

</TR>
</TABLE>

Preliminary studies indicate that the relatively simple algorithms used to 
produce the results shown on this page, however, cannot handle the size 
and complexity of the richer corpora that are made possible by automatic 
motion-capture.  We are currently working on this problem....

<h3>People</h3> 

<ul> 
    <li>
    <a href="{{ '/' | relative_url }}"> Liz Bradley</a>, Professor of 
    Computer Science.
    </li>
    <li>
    <a href="http://www.soe.ucsc.edu/~jstuart/">Josh Stuart</a>, the
    originator of these ideas and the author of the corresponding
    programs, was an undergraduate research assistant with our group from
    1/97 to 9/98 and is now on the faculty at UC Santa Cruz.  He had a lot
    of help from Apollo Hogan, Stephen Schroeder, Diana Dabby, and a bunch
    of other people.
    </li>
    <li> 
    <a href="http://www.colorado.edu/TheatreDance/dance/faculty/dCapps.html">
    David Capps</a>, who is shown above with reflectors taped to his joints, 
    is the director of the Dance division of the Department of Theater and 
    Dance at the University of Colorado.  He is the dance brains behind 
    this project.
    </li>
</ul> 

<h3> Papers and stuff</h3>

<ul>
    <li>
    E. Bradley, D. Capps, J. Luftig, and J. Stuart, <A 
    href="{{ '/assets/papers/OAIJ-08.pdf' | relative_url }}"> "Towards 
    Stylistic Consonance in Human
    Movement Synthesis," </a> <i>Open AI Journal</i> <b>4</b>:1-19 (2010).  
    Extended version available as <a 
    href="http://www.cs.colorado.edu/department/publications/reports/docs/CU-CS-1029-07.pdf"> 
    Department of Computer Science Technical Report CU-CS-1029-07.</a>
    </li>
    <li>
    E. Bradley and J. Stuart, <a href="papers/dance-paper.html' | relative_url }}"> 
    <!-- CHECK THIS--> "Using Chaos to Generate Variations on Movement Sequences,"</a> 
    <i> Chaos</i>, <b>8</b>:800-807 (1998)
    </li>
    <li>
    J. Stuart and E. Bradley, <a href="{{ '/assets/papers/icml98.pdf' | relative_url }}">
    "Learning the Grammar of Dance,"</a> <i> Proceedings of the ICML (International 
    Conference on Machine Learning)</i>, Madison WI; July 1998
    </li>
    <li>
    E. Bradley and J. Stuart, <a href="{{ '/assets/papers/ecc4-paper.html' | relative_url }}"> 
    "Using Chaos to Generate Choreographic Variations,"</a> <i>Proceedings of the 
    Experimental Chaos Conference</i>, Boca Raton FL; August 1997 (a preliminary version of 
    the 1998 <i>Chaos</i> paper listed above)
    </li>
    <li>
    E. Bradley, D. Capps, and A. Rubin, <a href="{{ 'papers/idat99.html' | relative_url }}"> 
    "Can Computers Learn to Dance?,"</a> <i> International Conference on
    Dance and Technology</i>, Tempe, AZ; February 1999 (written for the dance world)
    </li> <!-- Check this -->
    <li>
    E. Bradley and J. Stuart, <a href="{{ '/assets/papers/siag-opt.pdf' | relative_url }}"> 
    "Optimization and Human Movement,"</a> <i> Newsletter of the SIAM
    Activity Group on Optimization</i> <b>12(1)</b> (2001) (a short version written for
     the numerical community)
    </li>
    <li>
    An original performance piece entitled <a href="{{ '/assets/papers/concantation.pdf' | relative_url }}">
    Con/cantation</a>, which was based on Chaographer's variations of an original dance 
    composed by David Capps, premiered in Boston in April 2007.
    </li>
</ul> 


<h3> Links</h3>

<ul>
    <li>
    <a href="http://www.cs.cmu.edu/~jkh/"> Jessica Hodgins's group</a> at CMU is working 
    on an physics-based approach to generating animation sequences (which is <i> much </i> 
    harder than what we're doing, as well as really neat).
    </li>
    <li>
    <a href="http://www.cs.toronto.edu/~dt/"> Demetri Terzopoulos's group</a> at Toronto 
    is working on a neural-net based approach to generating animation sequences.
    </li>
    <li>
    The <a href="http://www.dancenotation.org/"> Dance Notation Bureau</a> and a nice 
    tutorial about <a href="http://user.uni-frankfurt.de/~griesbec/LABANE.HTML"> 
    Labanotation</a>, a written form of dance notation.
    </li>
    <li>
    <a href="http://www.csail.mit.edu/node/1936"> UP</a>, a collaboration between 
    Pilobolus and the MIT CSAIL.
    </li>
</ul>

<h3> Support</h3>

<ul>
    <li>
    The National Science Foundation (NYI #CCR-9357740
    </li>
    <li>
    A Packard Fellowship in Science and Engineering from the David and Lucile 
    Packard Foundation
    </li>
    <li>
    A Dean's Small Grant from the College of Engineering and Applied Sciences 
    at the University of Colorado
    </li>
    <li>
    A Radcliffe Fellowship from the <a href="http://www.radcliffe.edu">Radcliffe 
    Institute for Advanced Study</a>, one of the truly wonderful places in the world
    </li>
    <li>
    Any opinions, findings, and conclusions or recommendations expressed in this 
    material are those of the author(s) and do not necessarily reflect the views 
    of these organizations.
    </li>
</ul>

<BR>

<IMG SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   

