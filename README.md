# SmartChat Chef

## Vagrant

```bash
vagrant up
vagrant ssh-config --host smartchat_web >> ~/.ssh/config
vagrant ssh-config --host smartchat_worker >> ~/.ssh/config
vagrant ssh-config --host smartchat_scheduler >> ~/.ssh/config
bundle exec knife bootstrap -p 2222 -x vagrant smartchat_web --template-file=ubuntu-12.04-lts.erb
bundle exec knife bootstrap -p 2200 -x vagrant smartchat_web --template-file=ubuntu-12.04-lts.erb
bundle exec knife bootstrap -p 2221 -x vagrant smartchat_web --template-file=ubuntu-12.04-lts.erb
```

## Cook

```bash
bundle exec knife cook deploy@smartchat_web nodes/smartchat_vm.json
bundle exec knife cook deploy@smartchat_worker nodes/worker_vm.json
bundle exec knife cook deploy@smartchat_scheduler nodes/worker_vm.json
```
