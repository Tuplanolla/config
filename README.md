# Configuration Files

This repository contains polished and reusable
configuration files for various programs.

## Run-Command Files

### GNU Bourne Again Shell

* Programs:
    * `bash`
* Files:
    * `~/.bash_aliases`
    * `~/.bash_completion`
    * `~/.bashrc`
    * `~/.local/bin/inside`
    * `~/.local/bin/now`
    * `~/.local/bin/run`
    * `~/.local/bin/terminate`
    * `~/.local/bin/title`
* Installation:
    * ```
      #! /bin/sh

      ed ~/.bash_aliases <<'EOF'
      0i
      . "$HOME/files/software/config/bash_aliases"
      .
      w
      EOF

      ed ~/.bash_completion <<'EOF'
      0i
      . ~/files/software/config/bash_completion
      .
      w
      EOF

      ed ~/.bashrc <<'EOF'
      $a
      . ~/files/software/config/bashrc
      .
      w
      EOF

      for x in inside now run terminate title ; \
      do ln -fs ~/files/software/config/bin/$x ~/.local/bin/ ; \
      done
      ```
* Conditional Installation:
    * ```
      #! /bin/sh

      ed ~/.bash_aliases <<'EOF'
      $a
      for x in ~/files/software/config/bash_aliases ; \
      do if test -f "$x" ; then . "$x" ; fi ; done
      .
      w
      EOF

      ed ~/.bash_completion <<'EOF'
      $a
      for x in ~/files/software/config/bash_completion ; \
      do if test -f "$x" ; then . "$x" ; fi ; done
      .
      w
      EOF

      ed ~/.bashrc <<'EOF'
      $a
      for x in ~/files/software/config/bashrc ; \
      do if test -f "$x" ; then . "$x" ; fi ; done
      .
      w
      EOF

      for x in inside now run terminate title ; \
      do ln -fs ~/files/software/config/bin/$x ~/.local/bin/ ; \
      done
      ```

### Vi Improved

* Programs:
    * `ex`
    * `gvim`
    * `vi`
    * `vim`
* Files:
    * `~/.gvimrc`
    * `~/.vimrc`
* Installation:
    * ```
      #! /bin/sh

      ed ~/.gvimrc <<'EOF'
      0i
      source ~/files/software/config/gvimrc
      .
      w
      EOF

      ed ~/.vimrc <<'EOF'
      0i
      source ~/files/software/config/vimrc
      .
      w
      EOF
      ```
* Conditional Installation:
    * ```
      #! /bin/sh

      ed ~/.gvimrc <<'EOF'
      0i
      try | source ~/files/software/config/gvimrc
      \ | catch /\<E484\>/ | endtry
      .
      w
      EOF

      ed ~/.vimrc <<'EOF'
      0i
      try | source ~/files/software/config/vimrc
      \ | catch /\<E484\>/ | endtry
      .
      w
      EOF
      ```

### Terminal Multiplexer

* Programs:
    * `tmux`
* Files:
    * `~/.tmux.conf`
* Installation:
    * ```
      #! /bin/sh

      ed ~/.tmux.conf <<'EOF'
      0i
      source-file ~/files/software/config/tmux.conf
      .
      w
      EOF
      ```
* Conditional Installation:
    * ```
      #! /bin/sh

      ed ~/.tmux.conf <<'EOF'
      0i
      source-file -q ~/files/software/config/tmux.conf
      .
      w
      EOF
      ```

### GNU Plot

* Programs:
    * `gnuplot`
* Files:
    * `~/.gnuplot`
* Installation:
    * ```
      #! /bin/sh

      ed ~/.gnuplot <<'EOF'
      0i
      load '~/files/software/config/gnuplot'
      .
      w
      EOF
      ```

### GNU Octave

* Programs:
    * `octave`
    * `octave-cli`
* Files:
    * `~/.octaverc`
* Installation:
    * ```
      #! /bin/sh

      ed ~/.octaverc <<'EOF'
      0i
      source ('~/files/software/config/octaverc');
      .
      w
      EOF
      ```
* Conditional Installation:
    * ```
      #! /bin/sh

      ed ~/.octaverc <<'EOF'
      0i
      try;
        source ('~/files/software/config/octaverc');
      catch err;
        if isempty (regexp (err.message, '\<source\>'));
          rethrow (err);
        end;
      end
      .
      w
      EOF
      ```

## Settings Files

### Locales for System and Service Manager

* Programs:
    * `locale`
* Files:
    * `~/.locale.conf`
* Installation:
    * ```
      #! /bin/sh

      ln -fs ~/files/software/config/locale.conf ~/.locale.conf

      ed ~/.profile <<'EOF'
      $a
      for x in ~/.locale.conf ; \
      do if test -f "$x" ; then . "$x" ; fi ; done
      .
      w
      EOF

      cat ~/.locale.conf | xargs localectl set-locale
      ```

### Git

* Programs:
    * `git`
* Files:
    * `~/.gitconfig`
* Installation:
    * ```
      #! /bin/sh

      ln -fs ~/files/software/config/gitconfig ~/.gitconfig

      git config --list
      ```

### Redshift

* Programs:
    * `redshift`
    * `redshift-gtk`
* Files:
    * `~/.config/redshift.conf`
* Installation:
    * ```
      #! /bin/sh

      ln -fs ~/files/software/config/config/redshift.conf ~/.config/redshift.conf

      terminate redshift && run redshift-gtk
      ```

### User Directories for X Desktop Group

* Programs:
    * `xdg-user-dir`
* Files:
    * `~/.config/user-dirs.dirs`
    * `~/.config/user-dirs.locale`
* Installation:
    * ```
      #! /bin/sh

      ln -fs ~/files/software/config/config/user-dirs.dirs ~/.config/user-dirs.dirs

      ln -fs ~/files/software/config/config/user-dirs.locale ~/.config/user-dirs.locale

      xdg-user-dirs-update
      ```
