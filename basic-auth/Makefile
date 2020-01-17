OBJS := main.tf providers.tf tables.tf

all: $(OBJS)

.regions:
	aws --output json ec2 describe-regions | \
    grep '"RegionName":' | sed 's/^[^:]*: "//;s/",//' | sort | \
    tr '\n' ',' | sed 's/,$$//;s/,/, /g' > $@

%.tf: %.m4 .regions
	m4 -DREGIONS="$(shell cat .regions)" $< > $@

clean:
	rm -f $(OBJS) .regions
