{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "amqp"; version = "0.2.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holger Reinhardt <hreinhardt@gmail.com>";
      author = "Holger Reinhardt";
      homepage = "https://github.com/hreinhardt/amqp";
      url = "";
      synopsis = "Client library for AMQP servers (currently only RabbitMQ)";
      description = "Client library for AMQP servers (currently only RabbitMQ)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          ];
        };
      };
    }