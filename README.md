# Software Development Template for Scientists

A tool to help scientists achieve the following:

> 1.  Develop readable, reusable, & extendable codebases;

> 2.  Build technical frameworks that improve productivity & reproducibility;

> 3.  Easily leverage previous work to accelerate data-driven discovery.

The template has been loosely based on the Model-View-Controller design pattern widely used in building web applications, but adapted here to suit scientific software development.

### How To Use:

---

This project was built using Cookiecutter: a command-line utility that allows us to define a structural template and quickly bootstrap the project set-upprocess, while avoiding common mistakes. Cookiecutter was originally build for Python projects, but has been generalised, and is now an incredbly useful, flexible tool for improving workflow.

First, satisfy Cookiecutter's Python requirements, then follow the Cookiecutter installation instructions according to your own system and preferences (apt-get, brew, pip, conda, etc):

- Python 2.7 or 3.5+
- [Cookiecutter package](http://cookiecutter.readthedocs.org/en/latest/installation.html)

### For Python

---

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

Julia uses its own native system to manage virtual environments and dependancies (which has been implemented into the Makefile included with the template). Once you've downloaded Cookiecutter and its Python requirements, run the following command from the directory that you'd like to create your Julia project in:

```bash
cookiecutter gh:/teatauri/cookiecutter-for-scientists --directory="julia"
```

You'll be guided through the initial set-up. Once completed, navigate to your new project folder and run the following:

```bash
make create_project
```

This will generate a Julia environment and download project dependancies using Pkg, Julia's built-in package manager. Once this has completed, navigate back into the parent directory and re-enter the project folder.

# Directory Tree

    ├── LICENSE
    ├── Makefile           <- Great alternative to e.g. bash scripts for automating stuff!
    ├── README.md          <- Quick guide for other users/reviewers/future-you to learn about your work
    │ 
    ├── data
    │   ├── interim        <- For storing intermediate, transformed data
    │   ├── processed      <- Final data ready to be used by models or in analyses
    │   ├── raw            <- The original, immutable data dump
    │   └── imported       <- Pre-processed data from another project/external source
    │
    │
    ├── notebooks          <- Jupyter/Pluto notebooks for data exploration & method development
    │                         Naming convention: `1.0-initial-data-exploration`.
    │
    ├── results
    │   ├── papers         <- Any completed/in-progress papers and notes
    │   └── figures        <- Final figures for reporting or publishing
    │
    ├── requirements       <- Package & dependency environment for the project
    │                         (requirements.txt in Python, Manifest.toml n Julia)
    │
    │
    ├── src                <- Main body of code lives in here
    │   ├── __init__.py    <- Python-only - to treat src directory as a callable module
    │   │
    │   ├── controllers    <- Scripts for mediating data & passing to models or views
    │   │   │
    │   │   ├── plotting_controller.py/.jl
    │   │   └── models_controller.py/.jl
    │   │
    │   ├── models         <- Scripts that process & manipulate data (algorithms, simulation, ML models)
    │   │   │
    │   │   ├── make_predictions.py/.jl
    │   │   ├── process_results.py/.jl
    │   │   └── train_models.py/.jl
    │   │
    │   └── views          <- Scripts for visualising outputs (e.g. figs, diagrams, tables)
    │       │
    │       ├── generate_maps.py/.jl
    │       └── scatter_plots.py/.jl
    │
    └── git-info.pdf       <- Cheatsheet for common git commands - super important!

### Credits

---

- This cookiecutter was built using the rather wonderful [cookiecutter project](https://cookiecutter.readthedocs.io/)
- It was adapted from the well-considered data science project outline developed by [Driven Data](https://www.drivendata.org/).
