{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "highlighter2"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chemistmail@gmail.com";
      author = "Alex Suraci, Smirnov Alexey";
      homepage = "";
      url = "";
      synopsis = "source code highlighting";
      description = "Processes source code using tons of lexers, tokenizing it and formatting it as e.g. HTML.\n\nVery similar to the Python Pygments library; many lexers directly converted from it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.pcre-light)
          (hsPkgs.text)
          (hsPkgs.containers)
          ];
        };
      exes = {
        "highlighter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.pcre-light)
            (hsPkgs.text)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }