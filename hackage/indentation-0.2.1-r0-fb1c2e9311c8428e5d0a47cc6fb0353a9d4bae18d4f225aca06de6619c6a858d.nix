{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { parsec = true; trifecta = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "indentation"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>\nAleksey Kliger <aleksey@lambdageek.org>";
      author = "Michael D. Adams <http://michaeldadams.org/>";
      homepage = "https://bitbucket.org/mdmkolbe/indentation";
      url = "";
      synopsis = "Indentation sensitive parsing combinators for Parsec and Trifecta";
      description = "Indentation sensitive parsing combinators for Parsec and Trifecta.\n\nSee\n\n__Michael D. Adams and Ömer S. Ağacan__.\nIndentation-sensitive parsing for Parsec.\nIn /Proceedings of the 2014 ACM SIGPLAN Symposium on Haskell/,\nHaskell ’14, pages 121–132.\nACM, New York, NY, USA, September 2014. ISBN 978-1-4503-3041-1.\n<http://dx.doi.org/10.1145/2633357.2633369 doi:10.1145/2633357.2633369>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optional (flags.parsec) (hsPkgs.parsec)) ++ (pkgs.lib).optionals (flags.trifecta) [
          (hsPkgs.trifecta)
          (hsPkgs.parsers)
          ];
        };
      tests = {
        "test-indentation" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.indentation)
            ] ++ (pkgs.lib).optional (flags.parsec) (hsPkgs.parsec)) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs.trifecta);
          };
        };
      };
    }