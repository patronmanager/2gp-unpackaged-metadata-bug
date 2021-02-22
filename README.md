###### Repro steps

```shell
#Smoke test -- create a scratch org, push, run tests
sfdx force:org:create -f config/project-scratch-def.json  --setdefaultusername
sfdx force:source:push
sfdx force:apex:test:run -w 5

#Create your Managed Package (you need to edit sfdx-project.json to set your Namespace)
sfdx force:package:create -n "2GPUnpackagedBug" -t Managed -r force-app

#Create Version 1.0.0 
sfdx force:package:version:create -p "2GPUnpackagedBug" -w 15 --codecoverage -x

#Promote it to Released status
sfdx force:package:version:promote -p "2GPUnpackagedBug@1.0.0-1"
```