.PHONY: build push pull status commit

build: pull

HOME_DIR := $(HOME)
REPO_DIR := $(PWD)

DIRS := alacritty i3 nvim picom rofi tmux

push:
	@for dir in $(DIRS); do \
		if [ -d "$(HOME_DIR)/.config/$$dir" ]; then \
			mkdir -p "$(REPO_DIR)/$$dir"; \
			rsync -av --delete --exclude='.git' "$(HOME_DIR)/.config/$$dir/" "$(REPO_DIR)/$$dir/"; \
		fi; \
	done
	@cp "$(HOME_DIR)/.bashrc" "$(REPO_DIR)/.bashrc"
	@echo "pushed local -> repo"

pull:
	@for dir in $(DIRS); do \
		if [ -d "$(REPO_DIR)/$$dir" ]; then \
			mkdir -p "$(HOME_DIR)/.config/$$dir"; \
			rsync -av --delete --exclude='.git' "$(REPO_DIR)/$$dir/" "$(HOME_DIR)/.config/$$dir/"; \
		fi; \
	done
	@cp "$(REPO_DIR)/.bashrc" "$(HOME_DIR)/.bashrc"
	@echo "pulled repo -> local"

status:
	git status

commit:
	git add -A
	git commit -m "update dotfiles"
	git push
