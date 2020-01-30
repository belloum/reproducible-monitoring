# Reproducibile activity monitoring
Here, we make publicly available: (1) a realistic set of sensor data collected from a smart home, and (2) analysis rules 
for activity monitoring. These rules are written with a domain-specific language nammed Allen. Because of the dedicated nature of this DSL, 
our monitoring rules are concise and high-level, facilitating their evolution.

This repository contains four files and a readme file:
- makefile  
- dataset.csv a set of ambiant sensor data, collected over several months from a natural setting
- log-analyses.aln contains a set of rules to detect activitives as well as sensor failures 
- visualization.py this file allows a synoptic view of user activities. More specifically, this file contains the code source
to visualize the output of analysis rules for sensor failure and activity detection. 


# Getting started

1. You need to download and install Allen by following this link: https://github.com/NicVolanschi/Allen
2. Download the files of reproducibilitymonitoring repository    
3. Open your terminal and go to the folder of the downlowded files
4. Execute activity monitoring rules (log-analyses.aln) over the public dataset (dataset.csv) that we provided by typing: 
`make out\dataset`.
5. An out folder is generated, it include the output of monitoring rules detecting activities and sensor failures 
6. After this you can type `make dataset` from your terminal to generate the days number of platform/sensors failures
7. Finally, you can visualize the activity information using the file visualization.py that contains scripts examples for 
sleeping, outing, and toilet visit activity.

N.B. For visulaization you need to convert the output rules files from Allen to .csv and then executing the script of 
your choice that is contained in visualization.py 

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