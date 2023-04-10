check-brew:
	@if ! which brew >/dev/null; then \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi

check-ansible:
	@if ! which ansible > /dev/null; then \
		brew install ansible; \
		ansible-galaxy collection install community.general; \
	fi

default:
	$(MAKE) check-brew
	$(MAKE) check-ansible
	ansible-playbook playbook.yml -e @vars/default.yml --ask-become-pass

work:
	$(MAKE) check-brew
	$(MAKE) check-ansible
	ansible-playbook playbook.yml -e @vars/work.yml --ask-become-pass

default-ci:
	$(MAKE) check-brew
	$(MAKE) check-ansible
	ansible-playbook -e @vars/default.yml playbook.yml

work-ci:
	$(MAKE) check-brew
	$(MAKE) check-ansible
	ansible-playbook -e @vars/work.yml playbook.yml