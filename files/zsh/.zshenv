for x in .zshenv.d/*(.N) ; do
  [[ -r $x ]] && source $x
done
