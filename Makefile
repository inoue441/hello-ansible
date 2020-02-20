BASH := docker-compose exec controller bash
BASH_EXEC := $(BASH) -c

controller:
	docker-compose exec controller bash
.PHONY: controller

target:
	docker-compose exec target bash
.PHONY: target

ping:
	# $(BASH_EXEC) "ansible -i ./inventories/test2 test2 -m ping -vvv"
	# $(BASH_EXEC) "ansible -i ./inventories/docker test_servers -m ping -vvv"
	# $(BASH_EXEC) "ansible -i ./inventories/production mitsuboshi_app -m ping -vvv"
	# $(BASH_EXEC) "ansible -i ./inventories/production jfd_db -m ping -vvv"
	# $(BASH_EXEC) "ansible -i ./inventories/develop jfd-osaka -m ping -vvv"
	$(BASH_EXEC) "ansible -i ./inventories/local.ini servers -m ping -vvv"
.PHONY: ping

php56:
	$(BASH_EXEC) "ansible-playbook -i ./inventories/local.ini playbook1.yml -v"
.PHONY: php56

php73:
	$(BASH_EXEC) "ansible-playbook -i ./inventories/local.ini playbook2.yml -v"
.PHONY: php73
