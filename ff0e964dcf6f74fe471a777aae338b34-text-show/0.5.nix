{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      integer-gmp2 = true;
      recent-text = true;
      transformers-four = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text-show";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2014-2015 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/text-show";
        url = "";
        synopsis = "Efficient conversion of values into Text";
        description = "@text-show@ offers a replacement for the @Show@ typeclass intended\nfor use with @Text@ instead of @String@s. This package was created\nin the spirit of\n@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@.\n\nAt the moment, @text-show@ provides @Show@ instances for most data\ntypes in the @<http://hackage.haskell.org/package/array array>@,\n@<http://hackage.haskell.org/package/base base>@,\n@<http://hackage.haskell.org/package/bytestring bytestring>@, and\n@<http://hackage.haskell.org/package/text text>@ packages.\nTherefore, much of the source code for @text-show@ consists of\nborrowed code from those packages in order to ensure that the\nbehaviors of the two @Show@ typeclasses coincide.\n\nFor most uses, simply importing \"Text.Show.Text\"\nwill suffice:\n\n@\n&#123;-&#35; LANGUAGE NoImplicitPrelude &#35;-&#125;\nmodule Main where\n\nimport Data.Text (Text)\nimport Prelude hiding (Show(..), print)\nimport Text.Show.Text\n\nnumber :: Text\nnumber = show (Just \\\"Hello, World!\\\")\n\nmain :: IO ()\nmain = print number\n@\n\nIf you desire it, there are also monomorphic versions of the @showb@\nfunction available in the submodules of \"Text.Show.Text\". A naming\nconvention is present in which functions that show different values\ndepending on the precedence end with @Prec@ (e.g., @showbIntPrec@),\nwhereas functions that show the same values regardless of\nprecedence do not end with @Prec@ (e.g., @showbBool@).";
        buildType = "Simple";
      };
      components = {
        text-show = {
          depends  = (([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.template-haskell
          ] ++ (if _flags.recent-text
            then [ hsPkgs.text ]
            else [
              hsPkgs.integer-gmp
              hsPkgs.text
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") hsPkgs.tagged) ++ (if compiler.isGhc && compiler.version.lt "7.9"
            then [
              hsPkgs.nats
              hsPkgs.void
            ] ++ (if _flags.transformers-four
              then [ hsPkgs.transformers ]
              else [
                hsPkgs.transformers
                hsPkgs.transformers-compat
              ])
            else pkgs.lib.optional _flags.integer-gmp2 hsPkgs.integer-gmp);
        };
        tests = {
          text-show-properties = {
            depends  = (([
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.text-show
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) hsPkgs.ghc-prim) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") hsPkgs.tagged) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.9") ([
              hsPkgs.nats
              hsPkgs.void
            ] ++ (if _flags.transformers-four
              then [ hsPkgs.transformers ]
              else [
                hsPkgs.transformers
                hsPkgs.transformers-compat
              ]));
          };
        };
      };
    }