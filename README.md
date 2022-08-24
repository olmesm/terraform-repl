# Terraform REPL

A REPL for working (read _fiddling_) with data and manipulations for terraform.

## Development

Requires:

- [asdf](https://asdf-vm.com)
- [make](https://www.gnu.org/software/make/manual/make.html)

```bash
# Add system dependencies
asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add node
#  Install as needed based on .tool-versions
asdf install

# Initialize the repo - first run only, this will remove the src directory and contents
sh ./scripts/init.sh

# run the watch script
sh ./scripts/watch.sh
```

## How to...

Change the data in `src/main.yaml` and then alter it as required.

## Resources

- [Ohmybuck: Terraform working with Maps and Sets](https://ohmybuck.com/2022-03-02-20-37-terraform-working-with-maps-and-sets/)
