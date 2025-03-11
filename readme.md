# Emacs Configuration

This repository is for my Emacs configuration. My system for configuring Emacs can be summarized by the following three files:

1. `init.el`
2. `my_loader.org`
3. `my_keybindings.org`

The `init.el` file takes care of initializing packages and loading package archives, such as Melpa. Also, it makes sure to correctly load the other two configureing files, `my_loader.org` and `my_keybindings.org`, so that every time I launch Emacs, all the packages are to be correctly loaded and all my custom key bindings correctly set. All the details about setting up packages and key bindings go into `my_loader.org` and `my_keybindings.org`. It's all org files, which allow for literate programming, which in turn provides better readability and easier maintainability.
