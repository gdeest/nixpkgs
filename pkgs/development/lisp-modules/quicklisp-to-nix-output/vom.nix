{ fetchurl, ... }:
rec {
  baseName = ''vom'';
  version = ''20160825-git'';

  description = ''A tiny logging utility.'';

  deps = [ ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/vom/2016-08-25/vom-20160825-git.tgz'';
    sha256 = ''0mvln0xx8qnrsmaj7c0f2ilgahvf078qvhqag7qs3j26xmamjm93'';
  };

  packageName = "vom";

  asdFilesToKeep = ["vom.asd"];
  overrides = x: x;
}
/* (SYSTEM vom DESCRIPTION A tiny logging utility. SHA256
    0mvln0xx8qnrsmaj7c0f2ilgahvf078qvhqag7qs3j26xmamjm93 URL
    http://beta.quicklisp.org/archive/vom/2016-08-25/vom-20160825-git.tgz MD5
    ad16bdc0221b08de371be6ce25ce3d47 NAME vom FILENAME vom DEPS NIL
    DEPENDENCIES NIL VERSION 20160825-git SIBLINGS NIL PARASITES NIL) */
