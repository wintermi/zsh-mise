# zsh-mise
A zsh plugin for `mise` (formerly called `rtx`) a fast polyglot version manager. A replacement for tools like nvm, nodenv, rbenv, rvm, chruby, pyenv, etc.

## Prerequisite Checks
A check will be performed to verify that `mise` has been installed:

- [`mise`](https://mise.jdx.dev/) - **mise-en-place** a fast polyglot version manager.

## Installation
First we need to [download and install `mise`](https://mise.jdx.dev/getting-started.html) by running the following:

```sh
curl https://mise.jdx.dev/install.sh | sh
```

Next we need to enable `mise` using the [:zap: Zap](https://www.zapzsh.org/) minimal zsh plugin manager, by adding the following to your `.zshrc`

```sh
# Install plugin
plug "wintermi/zsh-mise"
```


## License
The **zsh-mise** plugin is released under the [Apache License 2.0](https://github.com/wintermi/zsh-mise/blob/main/LICENSE) unless explicitly mentioned in the file header.
