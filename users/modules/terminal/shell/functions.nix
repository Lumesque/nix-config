{
  default = {
    up = ''
    up() {
      this = "$1";
      while [ "this" -gt 0 ] ; do
        cd ..
        let "this--"
      done
    }
    '';
  };
}
