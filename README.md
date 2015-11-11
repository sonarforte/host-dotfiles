<h1>Host-dotfiles</h1>
<h3>A simple bash configuration for shared hosting servers</h3>
_(c) 2015 sonarforte_
All rights reserved

Using host-dotfiles is simple.

Simply 

```
$ cd host-dotfiles
$ ./install.sh
```

This will remove all the dotfiles in your home directory and add new ones which link to the dotfiles contained in ```./runcoms```. 

The old dotfiles are automatically backed up into ```./runcoms_old``` and timestamped.

To edit the rc files, simply edit them as you would a normal dotfile; the linking will obviously make the changes to the file contained in ```host-dotfiles/runcoms```



