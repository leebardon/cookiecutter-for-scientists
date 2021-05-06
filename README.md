# Software Development Template for Scientists

## A tool to help scientists:

> 1.  Develop readable, reusable, & extendable codebases;
>
> 2.  Build technical frameworks that improve productivity & reproducibility;
>
> 3.  Easily leverage previous work to accelerate data-driven discovery.

---

The template has been loosely based on the Model-View-Controller (MVC) design pattern widely used in building web applications, but adapted here to suit scientific software development. The MVC approach allows us to separate out the various parts of a given software project according to their function (i.e. data processing, input handling, output generating, etc), organising the project logically so that it's easier to resuse, extend and maintain. 

As a quick primer on how MVC has been interepreted in the context of a scientific research project:

**MODEL** - 
The model handles application data, and the rules for manipulating and transforming that data. You could think of the model as e.g. a series of functions that operate on data objects. For example, say you have a series of functions contained within the file *diversityindex.jl*. This file would be created inside the *model* directory, along with e.g. *size_distribution.jl*, both of which may be considered as separate logical modules within your project.

**VIEW** - 
The view, broadly speaking, is a visualisation of the state of the model. For example, you might have developed a block of code within a file called *heatmap.jl* that takes the output from *diversity_index.jl* and produces a heatmap. This file would be contained within the *view* directory.

**CONTROLLER** - 
I like to think of the controller as procedural mediator between model and view functionality. To explain this concept within the context of the current project, it would be illustrative to demonstrate a suggested workflow:

1. _DiversityIndexController.jl_ takes a dataset from the data/raw directory in the root of the project and passes it to a series of funtions in _diversity_index.jl_;
2. _diversity_index.jl_ passes a transformed dataset back to _DiversityIndexController.jl_, which proceeds to save the output into the processed data directory, before passing it to _heatmap.jl_;
3. _heatmap.jl_ generates the plot, and saves it to results/figures directory;
4. Finally, outside the *src* folder, you may choose to 

# Getting Started

This project was built using Cookiecutter: a command-line utility that allows us to develop custom templates for quickly bootstrapping the set-up of software projects while avoiding common mistakes.

First, satisfy Cookiecutter's Python requirements, then follow the Cookiecutter installation instructions according to your own system and preferences (apt-get, brew, pip, conda, etc):

- Python 2.7 or 3.5+
- [Cookiecutter package](http://cookiecutter.readthedocs.org/en/latest/installation.html)

### For Python

---

Please install a [system appropriate version of Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) the package manager before proceeding.

Then, navigate to the [python-specific](https://github.com/teatauri/cookiecutter-for-scientists/tree/master/python) README for further instructions.

### For Julia

---

Julia uses its own native system to manage virtual environments and dependancies (which has been implemented into the Makefile included with the template). Once you've downloaded Cookiecutter and its Python requirements, please navigate to the [Julia-specific](https://github.com/teatauri/cookiecutter-for-scientists/tree/master/julia) README for further set-up instructions.

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

- This cookiecutter is based on the excellent [cookiecutter project](https://cookiecutter.readthedocs.io/)
