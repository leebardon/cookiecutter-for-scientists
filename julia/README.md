# Julia Project Framework for Scientists

This framwork will allow you to quickly & easily achieve the following:

>1. Generate a software project template to help organise & compartmentalise your code;
>
>2. Instantiate a Julia virtual environment to avoid dependency conflicts and enable portability;
>
>3. Create a startup.jl file to automatically activate environments within their project directory;
>
>4. Amend startup.jl file to automatically activate super helpful packages - [OhMyREPL](https://github.com/KristofferC/OhMyREPL.jl) for syntax highlighting and [Revise](https://github.com/timholy/Revise.jl) for updating functions on-the-fly without needing to restart a Julia session;
---
### Before You Start:

---

First, ensure that you have satisfied Cookiecutter requirements, as described in [the main README](https://github.com/teatauri/cookiecutter-for-scientists). It's probably self-evident, but also ensure that you have a working copy of [Julia](https://julialang.org/downloads/) installed on your system.

I also **HIGHLY** recommend downloading [VSCode](https://code.visualstudio.com/). It's an open-source, cross-platform text editor and IDE that supports a multitude of programming languages with a wide variety of extentions that will make your code-life much easier and more efficient. This includes everything from auto-completion to helping identify bugs and suggesting solutions, to giving tips on the style and structure of your code. It even allows you to mount a remote machine via ssh, so you can use all of your favourite local desktop tools remotely. [This blog post](https://techytok.com/julia-vscode/) gives a good overview, specifically tailored to running Julia in VSCode.

---
### 1. Create a New Project:

---

In the terminal/command line, navigate to the directory that you'd like to create your project in and run the following command:

```bash
cookiecutter gh:/teatauri/cookiecutter-for-scientists --directory="julia"
```

You'll then be guided through a series of questions. Note that the values within the square brackets indicates the default - press enter to accept.

1. **project_name** - it's perfectly find to call it e.g. "test" if you don't have a specific project in mind at present;
2. **temp_folder** - this is needed during initial set-up. Press enter to accept.
3. **repo_name** - name your git repository (default is your project name in lowercase, with underscores replacing illegal whitespace);
4. **author_name** - Add your own name, or the lab name, whichever is appropriate;
5. **description** - A short one-liner about the project, fine to leave blank;
6. **Select open_source licence** - Choose '3', unless you plan to create an open-source package.

---
### 2. Set Up Environment:

---

Navigate to the temporary folder created in the above step (e.g. "julia_temp"). You'll see that the folder has been populated with a variety of files and subdirectories. This includes a Makefile, which I've built to help you get setup quickly. From inside your temporary folder, execute the following command:

```bash
make create_environment
```

This calls a make "rule" that automatically sets your project up as a Julia package with its very own virtual environment with an empty Project.toml. It also removes the temporary folder created earlier.

Then call:

```bash
make requirements
```

This adds [Pluto.jl](https://towardsdatascience.com/reactive-data-analysis-with-julia-in-pluto-notebooks-b4652defd03e) to your environment, plus the useful tools mentioned earlier. In doing so, a Manifest.toml file is created to store specfic details of your project's packages and recursive dependancies.

If this is your **first time** using this template, you should also run the following command:

```bash
make startup
```

This will create a startup.jl file (if you don't already have one), and add some lines to acheve the following functonality:

1. Automatcally activate your project environment when you launch the Julia REPL within a project with an existing Project.toml;
2. Automatically load "OhMyREPL" for syntax highlighting in your Julia REPL;
3. Automatically load "Revise" for on-the-fly function updates.

If you do already have a startup.jl, the relevant code wll be appended to the bottom.

---
### 3. Explore Julia!

---

TO-DO

1. Create Pluto notebooks to demo interactive functionality
2. Create demo project using MVC design pattern
3. Add details to main readme RE version control, etc.
