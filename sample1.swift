
let num :Int = 1

//構文テスト

var n: Int = 2 //「=」の前後にスペースないとコンパイルエラー
var i: Int = 1

//n = n/(i +1) //演算子の前後にスペースないと正しく実行されない
//n = n /(i + 1) //演算子の前後にスペースないと正しく実行されない
n = n / (i + 1)
print("n = \(n)")

// if文テスト
if num < 0 {
    print("num is under 0")
}else {
    print("num is \(num)")
}

//while テスト
var roop : Int = 10
while roop > 0 {
  if roop == 5 {
    break
  }

  print(roop)
  roop -= 1
}

//repeat wihile テスト

var value : Int = 43
repeat {
    print("\(value) ", terminator:"")
    
    if value%2 == 0 {
        value = value/2
    } else {
        value = 3 * value + 1
    }
} while value > 1 
print(value)

//for文テスト
for ii in 1...9 {
    for jj in 1...9 {
        if jj == 1 {
            print("\(ii)の段:", terminator:"")
        }
        print("\(ii*jj) ", terminator:"")
    }
    print()
}

for ii in 1...9 where ii < 3 || ii > 7{
    for jj in 1...9 {

        if(jj == 5){
            continue
        }

        if jj == 1 {
            print("\(ii)の段:", terminator:"")
        }
        print("\(ii*jj) ", terminator:"")
    }
    print()
}

//switch文テスト
for ii in 1..<100 {

   switch ii {
       case 1:
         print("開始")
       case 20 ..< 30:
         print("\(ii)")
         
         if ii == 25 {
             fallthrough
         }
       case 25, 50, 75:
         print("切りが良い(\(ii))")
       case 99:
         print("最後")
       
       default:break;
   }
}

//ラベルテスト

let year : Int = 2000
check: if year % 4 == 0 {
    if year % 100 == 0 {
      if year % 400 == 0 {
        print("うるう年です400")
        break check
      } else  {
        break check
      }
    }
    print("うるう年です")
}
print("チェック完了")
