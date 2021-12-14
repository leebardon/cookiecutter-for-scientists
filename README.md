<div id="top"></div>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
<!-- [![License][license-shield]][license-url] -->


<!-- PROJECT TITLE -->
<br />
<div align="center">
  <a href="https://github.com/leebardon/easy_slurm">
  <img src="images/title_image.png" alt="Logo" width="600" height="190">
  </a>

<h2 align="center"></h2>

  <p align="center">
    
    Software Development Template for Scientists
    
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About Cookiecutter for Scientists</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#directory-tree">Directory Tree</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->

# Software Development Template for Scientists

## A tool to help scientists:

>        1.  Develop readable, reusable, & extendable codebases;
>
>        2.  Build technical frameworks that improve productivity & reproducibility;
>
>        3.  Easily leverage previous work to accelerate data-driven discovery.
---
The template has been loosely based on the Model-View-Controller (MVC) design pattern widely used in building web applications, but adapted here to suit scientific software development. The MVC approach allows us to separate out the various parts of a given software project according to their function (i.e. data processing, input handling, output generating, etc), organising the project logically so that it's easier to resuse, extend and maintain. 

As a quick primer on how MVC has been interepreted in the context of a scientific research project:

**MODEL** - 
The model handles application data, and the rules for manipulating and transforming that data. You could think of the model as e.g. a series of functions that operate on data objects. For example, say you have a series of functions contained within the file *diversityindex.jl*. This file would be created inside the *model* directory, along with e.g. *size_distribution.jl*, both of which may be considered as separate logical modules within your project.

**VIEW** - 
The view, broadly speaking, is a visualisation of the state of the model. For example, you might have developed a block of code within a file called *heatmap.jl* that takes the output from *diversity_index.jl* and produces a heatmap. This file would be contained within the *view* directory.

**CONTROLLER** - 
I like to think of the controller as procedural mediator between model and view functionality. For clarity, consider the following context-specific workflow:

1. _DiversityIndexController.jl_ takes a dataset from the data/raw directory in the root of the project and passes it to a series of funtions in _diversity_index.jl_;
2. _diversity_index.jl_ passes a transformed dataset back to _DiversityIndexController.jl_, which proceeds to save the output into the processed data directory, before passing it to _heatmap.jl_;
3. _heatmap.jl_ generates the plot, and saves it to results/figures directory

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started
This project was built using Cookiecutter: a command-line utility that allows us to develop custom templates for quickly bootstrapping the set-up of software projects while avoiding common mistakes.

First, satisfy Cookiecutter's Python requirements, then follow the Cookiecutter installation instructions according to your own system and preferences (apt-get, brew, pip, conda, etc):

- Python 2.7 or 3.5+
- [Cookiecutter package](http://cookiecutter.readthedocs.org/en/latest/installation.html)

## Installation
### Python 
---

Please install a [system appropriate version of Miniconda](https://conda.io/projects/conda/en/latest/user-guide/install/index.html) the package manager before proceeding.

Then, navigate to the [python-specific](https://github.com/teatauri/cookiecutter-for-scientists/tree/master/python) README for further instructions.

### Julia 
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
    │                         (requirements.txt in Python, Manifest.toml in Julia)
    │
    │
    ├── src                <- Main body of code lives in here
    │   ├── __init__.py    <- Python-only - to treat src directory as a callable module
    │   │
    │   ├── controllers    <- Scripts for mediating data & passing to models or views
    │   │   │
    │   │   ├── example_controller_1.py/.jl
    │   │   └── example_controller_2.py/.jl
    │   │
    │   ├── models         <- Scripts that process & manipulate data (algorithms, simulation, ML models)
    │   │   │
    │   │   ├── example_model_1.py/.jl
    │   │   └── example_model_2.py/.jl
    │   │
    │   └── views          <- Scripts for visualising outputs (e.g. figs, diagrams, tables)
    │       │
    │       ├── example_view_1.py/.jl
    │       └── example_view_2.py/.jl
    │
    └── git-info.pdf       <- Cheatsheet for common git commands - super important!


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Added amazing feature!'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `License.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Lee Bardon - [@teatauri](https://twitter.com/teatauri) - leerbardon@gmail.com

Project Link: [https://github.com/leebardon/cookiecutter-for-scientists](https://github.com/leebardon/cookiecutter-for-scientists)

<p align="right">(<a href="#top">back to top</a>)</p>


### Credits
---

- This cookiecutter was built using the excellent [cookiecutter project](https://cookiecutter.readthedocs.io/)
- It was influenced by the data science project template developed by [Data Driven](https://drivendata.github.io/cookiecutter-data-science/)




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/leebardon/cookiecutter-for-scientists.svg?style=for-the-badge
[contributors-url]: https://github.com/leebardon/cookiecutter-for-scientists/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/leebardon/cookiecutter-for-scientists.svg?style=for-the-badge
[forks-url]: https://github.com/leebardon/cookiecutter-for-scientists/network/members
[stars-shield]: https://img.shields.io/github/stars/leebardon/cookiecutter-for-scientists.svg?style=for-the-badge
[stars-url]: https://github.com/leebardon/cookiecutter-for-scientists/stargazers
[issues-shield]: https://img.shields.io/github/issues/leebardon/cookiecutter-for-scientists.svg?style=for-the-badge
[issues-url]: https://github.com/leebardon/cookiecutter-for-scientists/issues
[license-shield]: https://img.shields.io/github/license/leebardon/cookiecutter-for-scientists.svg?style=for-the-badge
[license-url]: https://github.com/leebardon/cookiecutter-for-scientists/blob/master/LICENSE.txt
<!-- [product-screenshot]: images/screenshot.png -->



