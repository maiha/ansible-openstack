for x in .zlogin.d/*(.N) ; do
  [[ -r $x ]] && source $x
done
