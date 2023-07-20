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
	$(E) "  ZIG     pg_turso"
	$(Q) $(ZIG) build
.PHONY: all

dev: fmt
	$(Q) $(ZIG) build -freference-trace

fmt:
	$(Q) $(ZIG) fmt src/*

PG_CONFIG ?= pg_config
PKGLIBDIR=$(shell $(PG_CONFIG) --pkglibdir)
EXTDIR=$(shell $(PG_CONFIG) --sharedir)/extension/

install:
	install -m 755 zig-out/lib/libpg_turso.so $(PKGLIBDIR)/pg_turso.so
	install -m 755 extension/pg_turso--1.0.sql $(EXTDIR)/pg_turso--1.0.sql
	install -m 755 extension/pg_turso.control $(EXTDIR)/pg_turso.control

.PHONY: install
