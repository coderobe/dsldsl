.PHONY: all clean check install

all: compiled.rules

clean:
	rm -f data.fw compiled.rules

check: compiled.rules
	cat compiled.rules | grep -e "S_" -e "TO_" && false || true

install: compiled.rules check
	sudo iptables-restore compiled.rules

data.fw: generate-data
	./generate-data > data.fw

compiled.rules: skeleton.in config.in rules.fw data.fw
	cpp skeleton.in > compiled.rules
