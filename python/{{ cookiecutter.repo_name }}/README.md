# Python Project Framework for Scientists

A tool to help scientists structure their software projects in accordance with the following broad aims:

```
1. To encourage the development of readable, reusable, & extendable code;
2. To build technical frameworks and research workflows that improve productivity & reproducibility;
3. To waste less time on 'grunt work' & focus on further, deeper scientific questions;
4. To easily leverage and build on previous work, and to accelerate data-driven discovery.
```

The template has been loosely based on the Model-View-Controller design pattern widely used in building web applications, but adapted here to suit scientific software development.


### How To Use:
---
First, satisfy Cookiecutter requirements by ensuring that you have the following:

- Python 2.7 or 3.5+
- [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: Can be installed via pip by or conda:

```bash
$ pip install cookiecutter
```
or

```bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```
If you primarily use Python, or have experience as a Python developer, you may prefer to use Pipenv for tracking dependencies and virtual environments. However, our aim for this project is a language-agnostic and OS portable template, so we implement conda here. 


Please install a [system appropriate version of Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) before proceeding.


### 1. Create a New Project:
---
In the terminal/command line, navigate to the directory that you'd like to create your project in and run the following command:

```bash
cookiecutter gh:/teatauri/cookiecutter-for-scientists --directory="python"
```

You'll then be guided through a series of questions. Note that the values within the square brackets indicates the default - press enter to accept.

1. **project_name** - it's perfectly find to call it e.g. "test" if you don't have a specific project in mind at present;
2. **repo_name** - name your git repository (default is your project name in lowercase, with underscores replacing illegal whitespace);
3. **author_name** - Add your own name, or the lab name, whichever is appropriate;
4. **description** - A short one-liner about the project, fine to leave blank;
5. **select open_source licence** - Choose '3', unless you plan to create an open-source package.



### 2. Set Up Environment:
---
Change directory into your new project folder and run the following make command to set up your Python interpreter and virtual environment: 

```bash
$ make create_environment
```
The virtual environment will be created via conda. Follow the instructions to activate the virtual environment, then run the following command to install dev requirements:

```bash
$ make requirements
```
This will also check that your Python environment is set up correctly, and set your src folder up as a package, so that you can easily import modules between files within src. At any time, the following command will format the code in your src folder using the [black](https://pypi.org/project/black/) package. 

```bash
$ make lint
```
  
### 3. Explore Python

   

TO-DO
---

1. Implement tests
2. Create notebooks to demo basics of scientific python wrt oceanography
3. Create demo application to show how MVC components interact
4. Notebooks to demo version control? https://ohshitgit.com/ 



