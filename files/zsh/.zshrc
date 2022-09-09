for x in .zshrc.d/*(.N) ; do
  [[ -r $x ]] && source $x
done
