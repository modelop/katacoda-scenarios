In this first scenario, you'll be introduced to FastScore components and example models to walk through the deployment process.
 
FastScore is comprised of docker containers customized to execute analytics and is agnostic to the language, compute environment, and data sources. See architecture [here](https://opendatagroup.github.io/Getting%20Started/FastScore%20IA/). FastScore executes each model or piece of code in an individual FastScore Engine that can be scaled on demand. FastScore Manage communicates to the underlying storage location (example: Git) of models and other assets required to deploy into a FastScore Engine. 

There are 6 ways to interact with FastScore:
1. [Command Line Interface](https://opendatagroup.github.io/Reference/FastScore%20CLI/)
2. [FastScore SDKs](https://opendatagroup.github.io/Reference/FastScore%20SDKs/)
3. FastScore Dashboard
4. [FastScore API](https://opendatagroup.github.io/Reference/FastScore%20API/)
5. FastScore Composer
6. [FastScore Deploy (built using FastScore SDK)](https://opendatagroup.github.io/Product%20Manuals/Model%20Deploy/)

In this scenario, we will provide one model in Python and the associated assets needed to score data using that model through the CLI. 

The model in this scenario is a Gradient Boosting Machine model. The model will consume data about cars and predict the risk factor of each car on a range of -3 to 3, -3 being very risky and 3 being the least risky. 

Let's get started!

Please refer to our [documentation](https://opendatagroup.github.io/) for more detailed information.
 
