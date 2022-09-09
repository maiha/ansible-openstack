for x in .zlogout.d/*(.N) ; do
  [[ -r $x ]] && source $x
done
