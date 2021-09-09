.ONESHELL:
.PHONY: clean lint requirements

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = {{ cookiecutter.repo_name }}
TEMP_NAME = {{ cookiecutter.temp_folder }}
BUILD_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../)
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PATH := $($(BUILD_DIR)/$(PROJECT_NAME))

#################################################################################
# COMMANDS                                                                      #
#################################################################################


## Set up Julia environment
create_environment:
	@echo ">>> setting up Julia environment..."
	@cd $(BUILD_DIR) ; julia -e 'using Pkg; Pkg.generate("$(PROJECT_NAME)")'
	@mkdir $(PATH)/data/ && mkdir $(PATH)/notebooks/ && mkdir $(PATH)/results/ && mkdir $(PATH)/docs/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/data/. $(BUILD_DIR)/$(PROJECT_NAME)/data/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/notebooks/. $(BUILD_DIR)/$(PROJECT_NAME)/notebooks/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/results/. $(BUILD_DIR)/$(PROJECT_NAME)/results/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/src/. $(BUILD_DIR)/$(PROJECT_NAME)/src/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/docs/. $(BUILD_DIR)/$(PROJECT_NAME)/docs/
	@cp $(BUILD_DIR)/$(TEMP_NAME)/Makefile $(BUILD_DIR)/$(PROJECT_NAME)
	@echo ""
	@echo ">>> $(PROJECT_NAME) has been created at $(BUILD_DIR)"
	@cd $(BUILD_DIR) && rm -rf $(TEMP_NAME)


# intall dev requirements
requirements:
	@echo ">>> activating $(PROJECT_NAME) environment and installing packages..."
	@julia -e 'using Pkg; Pkg.activate(".") ; Pkg.add("Pluto") ; Pkg.add("OhMyREPL") ; Pkg.add("Revise")'
	@echo ""	
	
# Add startup,jl if not exists, append lines if does
startup:	
	@echo ">>> Creating and configuring ~/.julia/config/startup.jl ..."
	$(shell chmod u+x startup_config.sh)
	$(shell ./startup_config.sh)
	@echo ">>> You're good to go! :D "

                                                    #
#################################################################################

