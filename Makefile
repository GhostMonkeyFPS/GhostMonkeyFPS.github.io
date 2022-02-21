
# Parameters
SHELL 			= sh
PROJECT			= GhostMonkeyFPS.github.io
GIT_AUTHOR		= GhostMonkeyFPS
HTTP_PORT		= 8080

# Executables
EXEC_JEKYLL		= bundle exec jekyll
GEM				= gem
BUNDLER			= bundler

# Misc
.DEFAULT_GOAL 	= help

## —— 🐝 The Makefile 🐝 ———————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— 🚀 Project 🚀 ————————————————————————————————————————

build: ## Build project sites
	@$(EXEC_JEKYLL) build

serve: ## Serve project
	@$(EXEC_JEKYLL) serve -w --port $(HTTP_PORT)

## —— 🚀 Bundler 🚀 ————————————————————————————————————————

install: ## Install packages
	@$(BUNDLER) install


