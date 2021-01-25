# repository-a
To test how a flake that depends on other flake behaves



```
git clone https://github.com/GNU-ES/repository-a
cd repository-a
nix develop
```

In the shell:

```
nvim --version
nano --version
```

But the `hello` is broken, why?


## Some commands

This may be usefull:

```
nix flake list-inputs
```

```
nix flake show
```

```
nix flake update --commit-lock-file
```