{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { template-haskell = true; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "bound"; version = "1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bound/";
      url = "";
      synopsis = "Making de Bruijn Succ Less";
      description = "We represent the target language itself as an ideal monad supplied by the\nuser, and provide a 'Scope' monad transformer for introducing bound variables\nin user supplied terms. Users supply a 'Monad' and 'Traversable' instance,\nand we traverse to find free variables, and use the Monad to perform\nsubstitution that avoids bound variables.\n\nSlides describing and motivating this approach to name binding are available\nonline at:\n\n<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>\n\nThe goal of this package is to make it as easy as possible to deal with name\nbinding without forcing an awkward monadic style on the user.\n\nWith generalized de Bruijn term you can 'lift' whole trees instead of just\napplying 'succ' to individual variables, weakening the all variables bound\nby a scope and greatly speeding up instantiation. By giving binders more\nstructure we permit easy simultaneous substitution and further speed up\ninstantiation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.bytes)
          (hsPkgs.cereal)
          (hsPkgs.comonad)
          (hsPkgs.hashable)
          (hsPkgs.hashable-extras)
          (hsPkgs.prelude-extras)
          (hsPkgs.profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (flags.template-haskell && (compiler.isGhc && true)) (hsPkgs.template-haskell);
        };
      tests = {
        "Simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bound)
            (hsPkgs.prelude-extras)
            (hsPkgs.transformers)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }