.ONESHELL:
.PHONY: clean lint requirements

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = {{ cookiecutter.repo_name }}
TEMP_NAME = {{ cookiecutter.temp_folder }}
BUILD_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST)))/../)
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

#################################################################################
# COMMANDS                                                                      #
#################################################################################


## Set up Julia environment
create_environment:
	@echo ">>> setting up Julia environment..."
	@cd $(BUILD_DIR) ; julia -e 'using Pkg; Pkg.generate("$(PROJECT_NAME)")'
	@mkdir $(BUILD_DIR)/$(PROJECT_NAME)/data/
	@mkdir $(BUILD_DIR)/$(PROJECT_NAME)/notebooks/
	@mkdir $(BUILD_DIR)/$(PROJECT_NAME)/results/
	@mkdir $(BUILD_DIR)/$(PROJECT_NAME)/docs/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/data/. $(BUILD_DIR)/$(PROJECT_NAME)/data/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/notebooks/. $(BUILD_DIR)/$(PROJECT_NAME)/notebooks/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/results/. $(BUILD_DIR)/$(PROJECT_NAME)/results/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/src/. $(BUILD_DIR)/$(PROJECT_NAME)/src/
	@cp -rf $(BUILD_DIR)/$(TEMP_NAME)/docs/. $(BUILD_DIR)/$(PROJECT_NAME)/docs/
	@cp $(BUILD_DIR)/$(TEMP_NAME)/Makefile $(BUILD_DIR)/$(PROJECT_NAME)
	@echo ""
	@echo ">>> $(PROJECT_NAME) has been created at $(BUILD_DIR)"
	@rm -rf $(BUILD_DIR)/$(TEMP_NAME)


# intall dev requirements
requirements:
	@echo ">>> activating $(PROJECT_NAME) environment and installing packages..."
	@julia -e 'using Pkg; Pkg.activate(".") ; Pkg.add("Pluto") ; Pkg.add("OhMyREPL") ; Pkg.add("Revise")'
	@echo ""
	@echo ">>> Creating and configuring ~/.julia/config/startup.jl ..."
	@mkdir -p ~/.julia/config/
	@touch -a ~/.julia/config/startup.jl
	@echo 'using Pkg' >> ~/.julia/config/startup.jl
	@echo 'if isfile("Project.toml") && isfile("Manifest.toml")' >> ~/.julia/config/startup.jl
	@echo '         Pkg.activate(".")' >> ~/.julia/config/startup.jl
	@echo 'end' >> ~/.julia/config/startup.jl
	@echo 'using OhMyREPL' >> ~/.julia/config/startup.jl
	@echo 'using Revise' >> ~/.julia/config/startup.jl
	@echo ""
	@echo ">>> You're good to go! :D "

# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

# Inspired by <http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html>
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: help
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=19 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}' \
	| more $(shell test $(shell uname) = Darwin && echo '--no-init --raw-control-chars')
