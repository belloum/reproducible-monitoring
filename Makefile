SRC=Allen/src
LOG=dataset.csv
OPTQ=-q'/^EMeter_/>=20,/\.BatteryLevel$$/>=20'
FAULTS=door_failure_1week bed_failure toilet_failure

%.pm: %.aln
	$(SRC)/allenc $<

out/dataset: log-analyses.pm
	cat $ dataset.csv | \
		$(SRC)/allen $(OPTQ) log-analyses.pm | sort >$@

out/dataset-%: out/dataset
	grep $(@:out/dataset-%=%) $< | \
		./dayspermonth.pl -b 2017-01-01T00:00:00 -e 2017-12-31T02:00:00 >$@

dataset: $(FAULTS:%=out/dataset-%)
