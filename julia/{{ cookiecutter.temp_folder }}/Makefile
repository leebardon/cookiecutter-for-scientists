.ONESHELL:
.PHONY: clean lint requirements

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = {{ cookiecutter.repo_name }}
TEMP_NAME = {{ cookiecutter.temp_folder }}
BUILD_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../)
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PATH := $(BUILD_DIR)/$(PROJECT_NAME)

#################################################################################
# COMMANDS                                                                      #
#################################################################################


## Set up Julia environment


create_environment:
	@echo ">>> setting up Julia environment..."
	@$(shell echo $(BUILD_DIR))
	@$(shell echo $(PROJECT_DIR))
	@$(shell cd $(BUILD_DIR) && julia -e 'using Pkg; Pkg.generate("$(PROJECT_NAME)")')
	@$(shell cd $(PATH) && mkdir data/ && mkdir notebooks/ && mkdir results/ && mkdir src/ && mkdir docs/)
	@$(shell cd $(BUILD_DIR)/$(TEMP_NAME) && cp -rf data notebooks results src docs Makefile $(BUILD_DIR)/$(PROJECT_NAME)/)
	@echo ""
	@echo ">>> $(PROJECT_NAME) has been created at $(BUILD_DIR)"
	@$(shell cd $(BUILD_DIR) && rm -rf $(TEMP_NAME))

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

#################################################################################

