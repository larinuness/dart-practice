main(){

   print("Praticando Generics");

   final circleSlot = Slot<Circle>();
   circleSlot.insert(Circle());
   print(circleSlot.toString());

   final squareSlot = Slot<Square>();
   squareSlot.insert(Square());
   print(squareSlot.toString());

   final rectangleSlot = Slot<Rectangle>();
   rectangleSlot.insert(Rectangle());
   print(rectangleSlot.toString());

   final triangleSlot = Slot<Triangle>();
   triangleSlot.insert(Triangle());
   print(triangleSlot.toString());

   String? text;
   print(text);

   
 
}

class Circle {
  late String text;
  
}
class Square {}
class Rectangle {}
class Triangle {}

class Slot <T> {
  insert(T shape){
  }
  toString() {
    return '$T';
  }
}

