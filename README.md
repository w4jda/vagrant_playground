# vagrant_playground

#### Setup the guest VM using ansible playbook. 

Configuration contains:
1. Dependencies installation
1. Jenkins server setup. (docker, jcasc plugin).
1. Cronjob creation, trigger bash script every 5 minutes (jenkins-cli)


Usage:

```bash
vagrant up
```

After the setup is complete, the jenkins server should be reachable on your host (127.0.0.1:8080).