# repository-a
To test how a flake that depends on other flake behaves


## Testing it

Note: it requires flake installed and working!

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

To "activate" the nix flake command: 
```
nix-shell -I nixpkgs=channel:nixos-20.09 --packages nixFlakes
```

```
nix flake list-inputs
```

```
nix flake show
```

```
nix flake update --commit-lock-file
```