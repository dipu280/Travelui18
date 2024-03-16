
class Travel{
  String? name;
  String ?address;
  String ?img;

  Travel(this.name,this.address,this.img);
  static List<Travel> generatedTravelList(){
  return [
    Travel("Dipu", "Bhola", "images/d1.jpg"),
    Travel("Mithun", "Bhola", "images/d2.jpg"),
    Travel("Shariyar", "Kishoregang", "images/d3.jpg"),
    Travel("Dhaka", "Balgladesh", "images/d4.jpg"),
    Travel("Dip", "Kishoregang", "images/d5.jpg"),
    Travel("Dipu", "Bhola", "images/d6.jpg"),
    Travel("Mithun", "Bhola", "images/d7.jpg"),
    Travel("Shariyar", "Kishoregang", "images/d9.jpg"),
    Travel("Dhaka", "Balgladesh", "images/d10.jpg"),
    Travel("Dip", "Kishoregang", "images/d11.jpg"),
 
  ];
}
  static List<Travel> mostPopular(){
  return [
   Travel("Dhaka", "Balgladesh", "images/d10.jpg"),
    Travel("Dip", "Kishoregang", "images/d11.jpg"),
    Travel("Shariyar", "Kishoregang", "images/d3.jpg"),
    Travel("Dhaka", "Balgladesh", "images/d4.jpg"),
    Travel("Dip", "Kishoregang", "images/d5.jpg"),
    Travel("Dipu", "Bhola", "images/d6.jpg"),
    Travel("Mithun", "Bhola", "images/d7.jpg"),
    Travel("Shariyar", "Kishoregang", "images/d9.jpg"),
    Travel("Dipu", "Bhola", "images/d1.jpg"),
    Travel("Mithun", "Bhola", "images/d2.jpg"),
 
  ];
}
}

