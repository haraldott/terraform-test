# SPRK DevOps Coding Challenge

Thank you for taking the time to complete our coding challenge. We value your time and efforts, so we've designed this challenge to resemble the actual day-to-day work at SPRK as much as possible.

## Background

SPRK needs to know what food is available at the location of a partner. That's why we've built an application that allows our supply partners register their oversupply with our service.
Once the oversupply is registered in the frontend, it tells the backend about it and the backend will ask our matcher for a partner that matches the registered oversupply. The matcher is an async service that eventually responds by sending its recommendation to the backend as a web request.
In the meantime the cruncher is readjusting the weights of the machine learning algorithm running inside matcher and is updating it with new values.


## The Scenario

The service has been deveoped and is working locally using docker compose. It has done its job of impressing investors so that we now have the capital to hire a DevOps engineer to set this all up in production.
The developers have not thought of everything, so you will have to make some changes to the python code to make it production ready. Also develop the terraform scripts to deploy it and the Github CI actions you see fit.

Traffic from suppliers comes in bursts, typically morning and evening and we need to be able to scale the service to handle this.

## Requirements

The solution...

MUST:
 - Set up all resources in [Localstack](https://github.com/localstack/localstack)
 - Use infrastructure as code (Terraform)
 - Document improvements that you deemed out of scope for this challenge, but would have done in a regular project.
 - Document modules and resources in Terraform

SHOULD:
- Be tested
- Set up a CI/CD pipeline using Github Actions
- Consider security best practices
- Set up logging and monitoring
- Set up different environments (dev, staging, prod)

NICE TO HAVE:
- Frontend improvements
- Adding a database
- Define a runner with terraform that the github actions run on
- Involve K8s in one form or other
- Involve an event bus for some of the communication

## Tips

[Intro to running localstack with terraform](https://wormholerelays.com/posts/localstack-with-terraform-and-docker-for-running-aws-locally/)


## Submission

Please submit your solution as a Git repository on GitHub and share the repository link with us. Make sure the repository is public or accessible by the reviewers (frlnx, kim-liedtke, jennharw, nextglabs).

Good luck and have fun!

The SPRK Team