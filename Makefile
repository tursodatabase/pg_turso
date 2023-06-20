ZIG ?= zig

V =
ifeq ($(strip $(V)),)
	E = @echo
	Q = @
else
	E = @\#
	Q =
endif
export E Q

all:
	$(E) "  GIT     submodules"
	$(Q) git submodule update --init --force --recursive --depth 1
	$(E) "  MAKE    postgres headers"
	$(Q) (cd postgres && ./configure -q)
	$(Q) $(MAKE) -s -C postgres/src/backend generated-headers
	$(E) "  ZIG     pgturso"
	$(Q) $(ZIG) build
.PHONY: all

PG_CONFIG ?= pg_config
PKGLIBDIR=$(shell $(PG_CONFIG) --pkglibdir)

install:
	install -m 755 zig-out/lib/libpgturso.so $(PKGLIBDIR)/pgturso.so
.PHONY: install
