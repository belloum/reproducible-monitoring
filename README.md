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

The visualization part needs to run the python scripts on Anaconda Jupyter, packaged in a provided
Docker container for your convenience.

# Getting started

1. Download the files of reproducibilitymonitoring repository  (`git clone https://gitlab.inria.fr/rbelloum/reproducibilitymonitoring.git`)
2. Open your terminal and go to the folder of the downloaded files (`cd reproducibilitymonitoring`)
3. Execute activity monitoring rules (log-analyses.aln) over the public dataset (dataset.csv) that we provided by typing: `make`.
4. Various files have been generated under out/ and work/ subdirectories. They contain the output of monitoring rules detecting activities and sensor failures. Finally, a docker server has been invoked for visualizing the results.
  **NB: This step may last a few minutes.**
5. Copy/paste the indicated URL into your browser. This opens a Jupyter notebook web page.
6. Click on the 'work' subdirectory within the notebook. 
7. Click on the 'New' button in the upper right corner, and select 'Python 3' from the drop-down menu. This will open a new tab in the browser with an interactive Jupyter envrionment.
8. You can visualize the activity information using the scripts examples for toilet, outing, and sleeping activities, by typing into the command field: `%run visualize_toilet', `%run visualize_outing', and `%run visualize_sleep_quiet', respectively.


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