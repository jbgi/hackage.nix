{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "ideas"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2013";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "ideas provides feedback services to intelligent tutoring systems such as\nthe digital mathematical environment of the Freudenthal Institute, MathDox,\nand Activemath.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.uniplate)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.cgi)
          (hsPkgs.parsec)
          ];
        };
      };
    }