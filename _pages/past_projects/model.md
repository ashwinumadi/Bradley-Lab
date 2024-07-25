---
layout: general_content
permalink: /past_projects/model/
---

<h2>
Automatic Construction of Accurate Models of Physical Systems
</h2>

<!--
<p>
<a href="http://www.piecesauto.fr/science/?p=202">View a translation
of this page into Polish</a>
-->


<h3>Project Description</h3>


PRET automates the process that control theorists call <i> system
identification</i>: deducing the internal dynamics of a black-box
system solely from observations of its outputs.  PRET builds ordinary
differential equation (ODE) models of physical systems, linear or
nonlinear; it accomplishes this by wrapping a layer of AI techniques
around a core of traditional system identification (SID) methods.
This AI layer executes many of the high-level parts of the SID
procedure that are normally performed by a human expert: it
intelligently assesses the situation at each stage of the process and
then reasons from the available information to automatically choose,
invoke, and interpret the results of appropriate lower-level
techniques.  During its parameter estimation phase, for example, PRET
uses qualitative reasoning techniques to derive good starting values
for a nonlinear least-squares solver call, allowing the latter to
avoid local extrema in the regression landscape.  Like human experts,
PRET uses a heterogeneous collection of reasoning modes during the
model-building process, and the intelligent orchestration of these
modes is critical to its success.  This knowledge representation and
reasoning task is performed by a special first-order logic system,
which selects and coordinates the appropriate reasoning tactics in
order to guide the search quickly and accurately to an ODE model that
accounts for the important behavior of the system.


PRET is designed to be an engineer's tool; because of this, it differs
sharply from other AI modeling programs in a variety of important
ways.  First, it explicitly avoids all attempts to "discover" any
physics that falls outside its user's specifications; rather, it works
very hard to find a <i>minimal</i> model - one that matches the
observations to within a user-prescribed resolution, and no more.
Second, it does not adhere to a single, neat paradigm; rather, it
calls upon a wide variety of reasoning techniques, ranging from
classic AI ideas like constraint propagation to standard engineering
tricks like power series, and it works hard to use the right technique
at the right time.  This mix of methods is the source of PRET's
ability to solve real-world problems in a variety of engineering
domains.  Third, PRET works directly with the physical world, using
sensors and actuators to interact with its target systems --- an
<i>input/output modeling</i> approach that is both very powerful and
extremely difficult because of the nonlinear control theory that is
involved.



In terms of performance, PRET attained the functional level of a smart
undergraduate.  It solves garden-variety textbook SID problems fairly
well, struggles occasionally with the harder ones, and has
successfully (with some minor hand-holding concerning the
relationships between different coordinate systems) modeled one
real-world system: a <a href="{{ '/assets/images/rccar.ps' | relative_url }}">radio-controlled
car</a> destined for use in a soccer-playing robot project.  SID is an
essential first step in the design of a system like this; without an
accurate ODE model of the car's dynamics, it is impossible to build a
controller to direct its behavior according to a plan - and ODEs are
not part of a Radio Shack spec sheet.  From an engineering standpoint,
modeling this device is a nontrivial accomplishment; nonlinear SID is
considered to be an open problem.  The AI issues in this example were
also interesting: PRET not only duplicated the model that the project
analyst had derived by hand; interacting with the AI tool also helped
the human expert refine his explicit mental model of the system.



<h3> People</h3>

<ul>
    <li>
    <a href="{{ '/' | relative_url }}"> Prof. Liz Bradley</a>, project leader.
    </li>
    <li>
    <A HREF="http://www.cs.colorado.edu/~easley/Home.html">Matt
    Easley</A>, who finished his Ph.D. in 2000, developed representation
    and reasoning facilities for model building and input/output modeling.
    </li>
    <li>
    Apollo Hogan, an undergraduate research assistant, wrote PRET's
    GUI and helped Reinhard with lots of other bits and pieces.
    </li>
    <li>
    <a href="liz-and-bal-on-audubon.html">Brian LaMacchia</a>, a
    postdoc, helped write some of PRET's symbolic algebra facilities.
    </li> <!-- Chheck this -->
    <li>
    Janet Rogers and Abbie O'Gallagher of NIST helped write PRET's
    nonlinear parameter estimator.
    </li>
    <li>
    <A HREF="http://www.cs.colorado.edu/~stolle/Home.html">Reinhard
    Stolle</A>, who finished his Ph.D. in 1998, designed and implemented
    PRET's model tester and its declarative reasoning techniques.  He also
    played a key role in most of the main design decisions on the project
    as a whole.
    </li>
    <li>
    Tom Wrensch wrote PRET's qualitative simulator.
    </li>
</ul>


<h3> Papers</h3> 


For space reasons, sets of closely related papers
have been pruned.  See my <a href="{{ '/publications/' | relative_url }}">publications</a>
page for a complete list, and please <A
HREF="#contact">contact</A> me for reprints if what you want isn't
here (or won't download).

<ul>
    <li>
    <b>General: </b>
    <ul>
        <li> R. Stolle, M. Easley, and E. Bradley, "Reasoning about Models of
        Nonlinear Systems," in <i> Logical and Computational Aspects of
        Model-Based Reasoning</i>, L. Magnani <i>et al.</i>, eds. Kluwer,
        2002.
        </li>
        <li>
        E. Bradley, M. Easley, and R. Stolle, <a
        href="{{ '/assets/papers/aij.html' | relative_url }}">"Reasoning about nonlinear system
        identification,"</a> <i> Artificial Intelligence</i> <b>
        133</b>:139-188 (2001)
        </li><!-- Check this -->
        <li>
        E. Bradley and R. Stolle, <a
        href="{{ '/assets/papers/ai-math95.pdf' | relative_url }}">"Automatic Construction of Accurate
        Models of Physical Systems,"</a> <i> Annals of Mathematics and
        Artificial Intelligence</i>, <b>17</b>:1-28 (1996).
        </li>
    </ul>
    </li>
    <li>
    <b>Knowledge representation and reasoning: </b>
    <ul>
        <li>
        R. Stolle, A. Hogan, and E. Bradley, "Agenda Control for
        Heterogeneous Reasoners," <i> Journal of Logic and Algebraic
        Programming </i> <b> 62</b>:41-69 (2005)
        </li>
        <li>
        M. Easley and E. Bradley, "Incorporating Engineering Formalisms
        into Automated Model Builders," in <i>The Computational Discovery of
        Communicable Knowledge</i>, L. Todorovski and S. Dzeroski, eds.
        Springer, 2004.
        </li>
        <li>
        R. Stolle and E. Bradley, "Communicable Knowledge in Automated
        System Identification," in <i>The Computational Discovery of
        Communicable Knowledge</i>, L. Todorovski and S. Dzeroski, eds.,
        Springer 2004.
        </li>
        <li>
        M. Easley and E. Bradley, "Meta-domains for automated system
        identification," <i>Smart Engineering System Design (ANNIE)</i>
        St. Louis; November 2000.  Also available as <a
        href="http://www.cs.colorado.edu/department/publications/reports/reports.html">
        Department of Computer Science Technical Report</a> CU-CS-904-00
        </li>
        <li>
        M. Easley and E. Bradley, <A
        href="{{ '/assets/papers/ijcai99.pdf' | relative_url }}">"Generalized physical networks for model
        building,"</a> Proceedings <a href="http://www.ijcai.org"> <i>
        International Joint Conference on Artificial Intelligence </i>
        (IJCAI)</a>, Stockholm, August 1999.
        </li>
        <li>
        R. Stolle and E. Bradley, <A
        href="{{ '/assets/papers/stolle-aaai98.html' | relative_url }}">"Multimodal Reasoning for Automatic
        Model Construction"</A>, <I>Proceedings <A
        href="http://www.aaai.org/Conferences/National/1998/aaai98.html">Fifteenth
        National Conference on Artificial Intelligence 1998 (AAAI-98)</A></I>,
        Madison, Wisconsin, July 1998.
        </li>
        <li>
        R. Stolle and E. Bradley, <a href="{{ '/resources/stolle-ijcai97/' | relative_url }}">"Opportunistic modeling,"</a> <i>
        Proceedings of the IJCAI (International Joint Conference on
        Artificial Intelligence) Workshop on Engineering Problems in
        Qualitative Reasoning</i>, Nagoya Japan; August 1997.
        </li>
    </ul>
    </li>
    <li>
    <b>Input/output modeling:</b>
    <ul>
        <li> M. Easley and E. Bradley, "Information Granulation in Automated
        Modeling," in W. Pedrycz, editor, <i>Granular Computing: An Emerging
        Paradigm</i>, Physica-Verlag, 2001.
        </li>
        <li>
        M. Easley and E. Bradley, "Intelligent Sensor Analysis and
        Actuator Control," <i>IDA-01 (International Symposium on Intelligent
        Data Analysis)</i>, Lisbon; September 2001.
        </li>
        <li>
        M. Easley and E. Bradley, <A href="{{ '/assets/papers/ida99.pdf' | relative_url }}">"Reasoning
        about input-output modeling of dynamical systems,"</a> <i><a
        href="http://www.wi.leidenuniv.nl/~ida99/"> International Symposium on
        Intelligent Data Analysis</a> (IDA)</i>, Amsterdam; August 1999.
        </li>
        <li>
        E. Bradley and M. Easley, <a
        href="{{ '/assets/papers/easley-ida98.pdf' | relative_url }}">"Reasoning About Sensor Data for
        Automated System Identification,"</a> <i>Intelligent Data Analysis: An
        International Journal</i>, volume 2, number 2, Elsevier Science
        (1998).
        </li>
    </ul>
    </li>
    <li> <b>Nonlinear parameter estimation: </b>
    <ul>
        <li> E. Bradley, A. O'Gallagher, and J. Rogers, <a
        href="{{ '/assets/papers/ai-math98.html' | relative_url }}">"Global Solutions for Nonlinear Systems
        using Qualitative Reasoning,"</a> <i>Annals of Mathematics and
        Artificial Intelligence</i> <b> 23</b>:211-228 (1998)
        </li>
    </ul>
    </li>
</ul>


<h3> Links</h3>
<ul>
    <li> The qualitative reasoning/qualitative physics <A
    HREF="http://ai-www.aist-nara.ac.jp/doc/qphysics/">home page</a>.
    </li>
</ul>


<h3> Support</h3>
<ul>
    <li> This material is based upon work supported by the National
    Science Foundation under grant numbers MIP-9403223 and National Young
    Investigator Award CCR-9357740, by the Office of Naval Research under
    grant number N00014-96-1-0720, and by a Packard Fellowship in Science
    and Engineering.  Any opinions, findings, and conclusions or
    recommendations expressed in this material are those of the author(s)
    and do not necessarily reflect the views of these funding agencies.
    </li>
</ul>

<br>
<img SRC="{{ '/assets/gifs/rainbow.gif' | relative_url }}" WIDTH="350" HEIGHT="5">   

