import 'dart:io';
import 'dart:core';

var _morse = [".-", "-...", "-.-.", "-..", ".", "..-.",
             "--.", "....", "..", ".---", "-.-", ".-..",
             "--", "-.", "---", ".--.", "--.-", ".-.",
             "...", "-", "..-", "...-", ".--", "-..-",
             "-.--", "--.."];
var _alphabet = ["A", "B", "C", "D", "E", "F",
                "G", "H", "I", "J", "K", "L",
                "M", "N", "O", "P", "Q", "R",
                "S", "T", "U", "V", "W", "X",
                "Y", "Z"];

void main(){
    print("Enter Morse Code: ");
    var input = stdin.readLineSync();
    morse_decode(input, "");
}

bool is_valid(var str){
    for(var i=0;i<26;i++)
      if(str==_morse[i])
        return true;
    return false;
}

void morse_decode(var toDecode, var decoded){
  if(toDecode.length == 0)
    print(decoded);
  else{
    for(int i=0;i<26;i++){
      if(toDecode.startsWith(_morse[i])){
        var currentDecoded = decoded + _alphabet[i];
        var currentToDecode = toDecode.substring(_morse[i].length);
        morse_decode(currentToDecode, currentDecoded);
      }
    }
  }
}

