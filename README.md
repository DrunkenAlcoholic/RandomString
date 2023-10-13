# RandomStr



## About

RandomStr is coded in free pascal and will generate a string when given one or more of the following
at the bare minimum a string length and atleast one option must be given as a parameter, the following options

* --uppercase This will use/include UPPERCASE characters
* --lowercase This will use/include lowercase characters
* --numbers This will use/include number characters
* --special This will use/include special characters

## Examples

The following examples will use the string length of 20

--uppercase 
```
./RandomStr --uppercase 20
OQBBAFPYTHWZPVOCHFVZ
```
--lowercase 
```
./RandomStr --lowercase 20
ktdnuepmwajvmqewvcss
```
--numbers 
```
./RandomStr --numbers 20
12468829011676092269
```
--special 
```
./RandomStr --special 20
}+&*<@:,"^.@|(`{?<.:
```

You can also use a mix of all or any of the options

--uppercase --lowercase --numbers --special 
```
./RandomStr --uppercase --lowercase --numbers --special 20
mVa^~Hi]2jQk+xz)GNI/
```


## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.com/DrunkenAlcoholic/randomstr/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Set auto-merge](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)


