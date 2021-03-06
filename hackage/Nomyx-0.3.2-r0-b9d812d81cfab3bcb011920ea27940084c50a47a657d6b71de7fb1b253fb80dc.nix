{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Nomyx"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Nomyx" = {
          depends = [
            (hsPkgs.Nomyx-Language)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.MissingH)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.Unixutils)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-fd)
            (hsPkgs.data-lens-template)
            (hsPkgs.directory)
            (hsPkgs.eprocess)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.fb)
            (hsPkgs.filepath)
            (hsPkgs.hdaemonize)
            (hsPkgs.hint)
            (hsPkgs.hint-server)
            (hsPkgs.hscolour)
            (hsPkgs.hslogger)
            (hsPkgs.ixset)
            (hsPkgs.lenses)
            (hsPkgs.mime-mail)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.mueval)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.acid-state)
            (hsPkgs.happstack-authenticate)
            (hsPkgs.happstack-server)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.reform)
            (hsPkgs.reform-blaze)
            (hsPkgs.reform-happstack)
            (hsPkgs.web-routes)
            (hsPkgs.web-routes-happstack)
            (hsPkgs.web-routes-regular)
            (hsPkgs.web-routes-th)
            (hsPkgs.regular)
            (hsPkgs.safe)
            (hsPkgs.safecopy)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }