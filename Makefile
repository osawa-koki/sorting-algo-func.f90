FC = gfortran
SRC_DIR = src
BUILD_DIR = bin
SRC = $(wildcard $(SRC_DIR)/*.f90)
OBJ = $(patsubst $(SRC_DIR)/%.f90, $(BUILD_DIR)/%.o, $(SRC))
EXE = $(BUILD_DIR)/main

.PHONY: all clean

all: $(EXE)

debug: FC += -g
debug: all

$(EXE): $(OBJ)
	@mkdir -p $(@D)
	$(FC) -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.f90
	@mkdir -p $(@D)
	$(FC) -c -o $@ $<

clean:
	@rm -rf $(BUILD_DIR)
