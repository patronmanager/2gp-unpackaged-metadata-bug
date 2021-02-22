###### Repro steps

```shell
sfdx force:org:create -f config/project-scratch-def.json  --setdefaultusername
sfdx force:source:push
sfdx force:apex:test:run -w 5

```