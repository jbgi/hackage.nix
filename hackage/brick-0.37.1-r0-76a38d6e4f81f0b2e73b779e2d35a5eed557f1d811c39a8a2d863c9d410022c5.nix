{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "brick"; version = "0.37.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Jonathan Daugherty 2015-2018";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "https://github.com/jtdaugherty/brick/";
      url = "";
      synopsis = "A declarative terminal user interface library";
      description = "Write terminal applications painlessly with 'brick'! You write an\nevent handler and a drawing function and the library does the rest.\n\n\n> module Main where\n>\n> import Brick\n>\n> ui :: Widget ()\n> ui = str \"Hello, world!\"\n>\n> main :: IO ()\n> main = simpleMain ui\n\n\nTo get started, see:\n\n* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>\n\n* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>\n\n* The demonstration programs in the 'programs' directory\n\n\nThis package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vty)
          (hsPkgs.transformers)
          (hsPkgs.data-clist)
          (hsPkgs.dlist)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.microlens-mtl)
          (hsPkgs.config-ini)
          (hsPkgs.vector)
          (hsPkgs.contravariant)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.text-zipper)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.word-wrap)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      exes = {
        "brick-readme-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.brick) (hsPkgs.text) ];
          };
        "brick-form-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.vty)
            ];
          };
        "brick-text-wrap-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.text)
            (hsPkgs.word-wrap)
            ];
          };
        "brick-cache-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-visibility-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-viewport-scroll-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-dialog-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-mouse-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.text-zipper)
            ];
          };
        "brick-layer-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-suspend-resume-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-padding-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-theme-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-attr-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-markup-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-list-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.vector)
            ];
          };
        "brick-list-vi-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.vector)
            ];
          };
        "brick-custom-event-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-fill-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-hello-world-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-edit-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            ];
          };
        "brick-border-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-dynamic-border-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        "brick-progressbar-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.microlens)
            ];
          };
        };
      tests = {
        "brick-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }