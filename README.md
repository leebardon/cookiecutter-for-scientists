# Research Software Development Template

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
This project was built using Cookiecutter: a command-line utility that allows us to define a structural template and quickly bootstrap the project set-upprocess, while avoiding common mistakes. Cookiecutter was originally build for Python projects, but has been generalised, and is now an incredbly useful, flexible tool for improving workflow. 

First, satisfy Cookiecutter's Python requirements, then follow the Cookiecutter installation instructions according to your own system and preferences (apt-get, brew, pip, conda, etc):

- Python 2.7 or 3.5+
- [Cookiecutter package](http://cookiecutter.readthedocs.org/en/latest/installation.html)


### For Python
---
Cookiecutter recommends using pip for installation, but here we use conda, as our aim is to work towards a language-agnostic and OS-portable template system for scientists.  

Please install a [system appropriate version of Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) before proceeding.

To start a new Python project, obtain a copy of the template by running the below command and following the instructions: 

```bash
$ cookiecutter https://github.com/teatauri/cookiecutter_for_scientists --directory="python"
```

Change directory into your new project folder and run the following make command to set up your Python interpreter and virtual environment: 
```bash
$ make create_environment
```
The virtual environment will be created either via conda. Follow the instructions to activate the virtual environment, then run the following command to install requirements:

```bash
$ make requirements
```
This will also check that your Python environment is set up correctly, and set your src folder up as a package, so that you can easily import modules between files within src. At any time, the following command will format the code in your src folder using the [black](https://pypi.org/project/black/) package. 

```bash
$ make lint
```

### For Julia 
---
Julia uses its own native system to manage virtual environments and dependancies. 

  
# Directory Tree

    ├── LICENSE
    ├── Makefile           <- Great alternative to e.g. bash scripts for automating stuff!
    ├── README.md          <- Project overview and guide to setting up & running the software
    │ 
    ├── data
    │   ├── interim        <- Place to store intermediate, transformed data
    │   ├── processed      <- Final data ready to be used by models or in analyses
    │   ├── raw            <- The original, immutable data dump
    │   └── imported       <- Pre-processed data from another project/external source
    │
    ├── docs               <- Sphinx default for making lovely docs! See https://www.sphinx-doc.org/
    │
    ├── notebooks          <- Jupyter notebooks for exploration & method development on test data.
    │                         Naming convention: `1.0-initial-data-exploration`.
    │
    ├── results            <- Any written summaries, discussion, analysis in e.g. PDF, LaTeX
    │   └── figures        <- Final figures for reporting or publishing
    │
    ├── requirements.txt   <- Package & dependency environment for the project
    │                         Generate with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- Makes project pip installable (pip install -e .) so src can be imported
    │
    ├── src                <- Main body of code lives in here
    │   ├── __init__.py    <- Tells Python to treat src directory as a callable module
    │   │
    │   ├── controllers    <- Scripts for mediating data & passing to models or views
    │   │   │
    │   │   ├── plotting_controller.py
    │   │   └── models_controller.py
    │   │
    │   ├── models         <- Scripts that process & manipulate data (algorithms, simulation, ML models)
    │   │   │
    │   │   ├── make_predictions.py
    │   │   ├── process_results.py
    │   │   └── train_models.py
    │   │
    │   └── views          <- Scripts for visualising outputs (e.g. figs, diagrams, tables)
    │       │
    │       ├── generate_maps.py
    │       └── scatter_plots.py
    │
    └── tox.ini            <- Python version & virtualenv testing - tox.readthedocs.io


### Run Tests:
---
```bash
$ py.test tests
```

### Credits
---
* This cookiecutter was built using the rather wonderful [cookiecutter project](https://cookiecutter.readthedocs.io/) 
* It was adapted from the well-considered data science project outline developed by [Driven Data](https://www.drivendata.org/).
