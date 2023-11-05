import 'Seller.dart';

void main(){
  Seller seller = Seller('Leonel');

  seller.inputTotalAmountSold(30000);

  print("${seller.name}'s final salary: ${seller.getFinalSalary()}");
}