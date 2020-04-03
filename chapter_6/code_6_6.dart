// code 6.6
// lambda is an anonymous function

class AboutLambdas {
  // first way of expressing Lambda or anonymous function
  Function addingNumbers = (int a, int b) {
    var sum = a + b;
    return sum;
  };

  Function multiplyWithEight = (int num) {
    return num * 8;
  };

  // second way to expressing Lambda by Fat Arrow
  Function showName = (String name) => name;

  // higher order functions pass function as parameter
  int higherOrderFunction(Function myFunction) {
    int a = 10;
    int b = 20;
    print(myFunction(a, b));
  }

  // returning a function
  Function returningAFunction() {
    Function showAge = (int age) => age;
    return showAge;
  }

  // a closure can modify the parent scope
  String anyString = "Any parent String";
  Function overridingParentScope = () {
    String message = "Overriding the parent scope";
    print(message);
  };

  Function show = () {
    // the anonymous function will return this originally
    Function gettingImage() {
      String path = "This is a new path to image.";
      print(path);
    }
    return gettingImage;
  };
}

main(List<String> arguments) {
  var add = AboutLambdas();
  var addition = add.addingNumbers(5, 10);
  print(addition);

  var mul = AboutLambdas();
  var result = mul.multiplyWithEight(4);
  print(result);

  var name = AboutLambdas();
  var myName =name.showName("Sanjib");
  print(myName);

  var higher = AboutLambdas();
  var higherOrder = higher.higherOrderFunction(add.addingNumbers);

  var showAge = AboutLambdas();
  var showingAge = showAge.returningAFunction();
  print(showingAge(25));

  var sayAge = AboutLambdas();
  sayAge.overridingParentScope();
  
  var image = AboutLambdas();
  String path = "This is old path";
  var imagePath = image.show();
  imagePath();
}