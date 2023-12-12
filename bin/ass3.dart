import "dart:convert";
import 'dart:io';

import 'functions.dart';

void main(){
  String menu;
  List<String> ShoppingList=[];

  while(menu!="C"){
    print("Menu; Press; \n A to Add to shopping list. \n V to View list. \n C to Close list");
    menu=stdin.readLineSync();
      if(menu =="A"){
       addItemTolist(ShoppingList);
      }
      if(menu =="V"){
        print(ShoppingList);
      }
  }}

