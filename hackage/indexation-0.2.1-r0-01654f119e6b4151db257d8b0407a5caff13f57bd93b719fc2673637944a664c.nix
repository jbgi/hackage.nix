{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "indexation"; version = "0.2.1"; };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/indexation";
      url = "";
      synopsis = "Tools for entity indexation";
      description = "A set of tools for indexing entities";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.deferred-folds)
          (hsPkgs.focus)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.potoki-cereal)
          (hsPkgs.potoki)
          (hsPkgs.profunctors)
          (hsPkgs.stm-containers)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      };
    }