enum FlavorEnum {
  demo,
  prod
}

class Flavour {
  static FlavorEnum? appFlavour;
  static String get title {
    switch (appFlavour) {
      case FlavorEnum.demo:
        print("ToDo Demo");
        return 'ToDo Demo';
      case FlavorEnum.prod:
        print("ToDo Prod");
        return "ToDo Prod";
      default:
        print("ToDo Default");
        return "ToDo Default";
    }
  }
}