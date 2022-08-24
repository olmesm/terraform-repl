# Terraform REPL

A REPL for working (read _fiddling_) with data and manipulations for terraform.

If you've worked with terraform for a while, you'll know that working with lists isn't great as any changes will refresh the entire stack or modules generated from it, and hcl has an odd syntax for working with maps.

I found that spinning up a project everytime just to play with data cumbersome. This makes it easier to log out the transformation of data.

## Development

Requires:

- [asdf](https://asdf-vm.com)

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
# ...change the data in `src/main.yaml` and then alter it as required.

## Run the code in ./example
terraform -chdir=example init && terraform -chdir=example plan
```

## Resources

- [Ohmybuck: Terraform working with Maps and Sets](https://ohmybuck.com/2022-03-02-20-37-terraform-working-with-maps-and-sets/)
