# Reproducibile activity monitoring
Here, we make publicly available: (1) a realistic set of sensor data collected from a smart home, and (2) a set of rules 
to analyzing sensor data for activity monitoring. These rules are written with a domain-specific language nammed Allen (that you can find in this repository). 
Because of the dedicated nature of this DSL, our monitoring rules are concise and high-level, facilitating their evolution.

**Repository content:**

- makefile
- Allen/src with the version that we used to execute our rules. Further information about Allen are found 
in this link: https://github.com/NicVolanschi/Allen
- dataset.csv a set of ambiant sensor data, collected over several months from a natural setting
- log-analyses.aln contains a set of rules to detect activitives as well as sensor failures 
- out directory that will contain the output of the rules (the detected activities and failures)
- visualization.py this file allows a synoptic view of user activities. More specifically, this file contains the code source
to visualize the output of analysis rules for sensor failure and activity detection. 

# Installation 

You need Perl with its core modules installed. The Allen code has been tested on Perl versions 5.18 and MacOS X, 
but should work on other configurations as well.

For the visualization we have run the python scripts on Anaconda Jupyter.

# Getting started

**Part 1:**
1. Download the files of reproducibilitymonitoring repository    
2. Open your terminal and go to the folder of the downlowded files
3. Execute activity monitoring rules (log-analyses.aln) over the public dataset (dataset.csv) that we provided by typing: 
`make out/dataset`.
4. A dataset file is generated. It contains the output of monitoring rules detecting activities and sensor failures 
5. After this you can type `make dataset` from your terminal to generate the days number of platform/sensors failures
6. Finally, you can visualize the activity information using the file visualization.py that contains scripts examples for 
sleeping, outing, and toilet visit activity. The explanation of how to run the visualization and what tools you need,
is explained in part 2


**Part 2:**

For visualization you need to convert the output rules files (generated in the out directory) from Allen to .csv and then executing the script of 
your choice that is contained in visualization.py.
Before executing the scripts on Anaconda Jupyter, you will need to import these modules:

`import pandas as pd`

`from pandas import DataFrame`

`from scipy import stats`

```
from matplotlib import pyplot as plt 
%matplotlib inline
```

`from scipy import stats`

`import seaborn as sns`


# Documentation 

[1] Nic Volanschi, Bernard Serpette, and Charles Consel. "Implementing a Semi-causal Domain-Specific Language for 
Context Detection over Binary Sensors". In GPCE 2018 - 17th ACM SIGPLAN International Conference on 
Generative Programming: Concepts & Experiences.

[2] Nic Volanschi, Bernard Serpette, Adrien Carteron, and Charles Consel. 
"A Language for Online State Processing of Binary Sensors, Applied to Ambient Assisted Living". 
In Proceedings of the ACM on Interactive, Mobile, Wearable and Ubiquitous Technologies, 2:4, 2018.

[3] Charles Consel, Lucile Dupuy, and Hélène Sauzéon. 2017. HomeAssist: An assisted living platform 
for aging in place based on an interdisciplinary approach. 
In International Conference on Applied Human Factors and Ergonomics. Springer, 129–140.