TARGET = x86_64-pc-windows-gnu
NAME = {{project-name}}
EXE = target/$(TARGET)/debug/$(NAME).exe

.PHONY: all run clean release force-build

all: force-build

force-build:
	cargo build --target $(TARGET)

run: force-build
	./$(EXE)

release:
	cargo build --release --target $(TARGET)

clean:
	cargo clean
