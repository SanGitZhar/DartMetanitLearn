void main (){
      
     try{
        int x = 9;
        int y = 0;
        int z = x ~/ y;
      
        print(z);
    }
    catch(e){
         print("Возникло исключение $e");
    }
    finally{
         print("Выполнение блока finally");
    }
    print("Завершение программы");
}