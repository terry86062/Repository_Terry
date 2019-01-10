//Remote Learning Assignment - Week 1

//Assignment 1: Git & GitHub
//1.

//2.
/*
＊ git status
 meaning: 會顯示目前在哪個branch，檢查自上次commit之後有哪些file被更改，包含：working directory是否有untracked file或modified file，staging area是否有new file。
 using case: 可以隨時檢查讓使用者知道，在working directory有什麼file是untracked，且自上次commit後使用者改了什麼檔案。另外，在commit前知道staging area有哪些檔案，若現在commit，這次commit會包含哪些檔案有被更改。

＊ git add
 meaning: 從working directory加入untracked file或modified file到staging area。
 using case: 當使用者想要commit之前，要先將untracked file或modified file加入到staging area，才能進行接下來的commit。
 
＊ git commit
 meaning: 將staging area中的files加入到Repository。
 using case: 當使用者針對file做了一個或一些邏輯修改後想要保存此時修改的版本時，可以進行commit。
 
＊ git log
 meaning: 可以顯示目前checkout的commit所有的parent (commit)
 using case: 當使用者想了解之前進行了哪些修改，好進一步比較，或回到之前的版本時可以使用，以找出commit message和commit id。
 
＊ git push [ Repo_name ] [ Branch_name ]
 meaning: 可以將Local Repository的資料上傳存至GitHub Repository。
 using case: 當使用者想跟別人分享或共同協作Project時，可以透過將自己的Local Repository上傳至GitHub Repository，讓別人可以去看、下載或一起進行協作。
 
＊ git remote -v
 meaning: 會顯示目前Repository的remote資訊，包含有哪些remote，它們的名稱，它們個別執行fetch和push所對應的remote的URL。
 using case: 當使用者想了解目前Repository的remote資訊，以利之後fetch、pull或push資料。
 
＊ git branch
 meaning: 可以檢出目前Repository所有的branch，和目前所在的branch。另外，若在git branch後加入參數可以產生以此為命名的新的branch。
 using case: 當使用者想查詢Repository有的branch，以利切換到不同branch進行作業時。或者是使用者想開一個新的branch來開發新功能或不同的版本等情況時可以使用。
 
＊ fork
 meaning: 可以複製別人在GitHub的Repository，到自己的GitHub上。
 using case: 當使用者想使用別人公開在GitHub的Repository，並且也將自己的更改版本上傳至GitHub時，或是與他人共同協作時。
*/

//3.
/*
1.Sign in https://github.com.
2.Press the button of plus to create a new GitHub repository.
3.Give a name to the new GitHub repository.
4.Press Creat repository button and the new GitHub repository is created.
5.Create a directory for the local project in computer.
6.Go to the command line interface and cd to the directory.
7.Use git init to create a new git repository.
8.Add the project file to the working directory.
9.Use git add to track the file.
10.Use git commit to make a commit.
11.Use git remote add origin URL(gitHub repository).
12.Use git push origin master.
*/


//Assignment 2: Swift Basic
//1.
let pi: Double = 3.14159265359

//2.
let x: Int = 2
let y: Int = 4
let average: Int = (x + y)/2

//3.
let recordSystem: Double = Double(average)
10 / 3      //explain: 是整數除以整數，所以出來的結果是整數(因為非整除，顯示商數，忽略餘數)。
10.0 / 3.0  //explain: 是Double除以Double，所以出來的結果是Double。

//4.
var flag: Bool = true
var ​inputString: String = "​Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5.
var salary = 22000
salary += 28000

//6.
//== (Equality)

//7.
let firstValue = 10
let secondValue = 3
let remain = 10 % 3

//8.
//explain: 一旦宣告一個常數(let)，則無法再更改此常數的值。但若宣告一個變數(var)，後續還可以更改此變數的值。

//9.
/*
naming conventions and rules
常數和變數
1.Cannot start with a number
2.No whitespace characters
3.No special characters
4.No mathematical symbols
5.Use camelCase
*/

//10.
//當我們宣告常數或變數時，若未指定值的型別，Swift使用Type Inference，讓complier自動推斷出值所合適的型別。

//11.
/*
var phoneNumber = 0987654321  (因為未標注phoneNumber的型別，且0987654321為整數，Type Inference自動推斷為Int型別)
phoneNumber = "Hello world."  (由於phoneNumber被自動推斷為Int型別，且Swift為Type Safety Language，所以無法存入String，會報錯)
*/



//Assignment 3: Swift Collection and Control Flow - Colletion
//1.
var myFriends: [String] = []

//2.
myFriends += ["Ian", "Bomi", "Kevin"]

//3.
myFriends.append("Michael")

//4.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5.
for friend in myFriends {
    print(friend)
}

//6.
//由於myFriends array中只有4個值，所以若要找出index 5的值，而使用myFriends[5]，會報錯。因為myFriends array中並不存在第6個值。

//7.
myFriends[0]

//8.
myFriends[myFriends.count-1]

//9.
var myCountryNumber: [String: Int] = [:]

//10.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//11.
myCountryNumber["GB"] = 0

//12.
var yourCountryNumber: [String: Int] = [:]

//13.
myCountryNumber["JP"] = nil



//Assignment 3: Swift Collection and Control Flow - Control Flow
//1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in 3...5 {
    print(lottoNumbers[i])
}

//2.
for index in 1...6 {
    let newIndex = 6 - index
    print(10 - newIndex)
}
for index in 1...3 {
    let newIndex = index * 2
    print(12 - newIndex)
}

//3.
var whileX = 5
while whileX >= 0 {
    print(10 - whileX)
    whileX -= 1
}
var whileY = 0
while whileY <= 4 {
    print(10 - whileY)
    whileY += 2
}

//4.
whileX = 5
repeat {
    print(10 - whileX)
    whileX -= 1
} while whileX >= 0
whileY = 0
repeat {
    print(10 - whileY)
    whileY += 2
} while whileY <= 4

//5.
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//6.
var jobLevel​ = 1
switch jobLevel​ {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}



//Assignment 4: Function in Swift
//1.
func greet(person name: String) -> String {
    return "Hello, \(name)"
}
greet(person: "Terry")

//2.
func multiply(a: Int = 10, b: Int) {
    print(a * b)
}

//3.
//argument label是用於呼叫function時顯示，如1.中的person，讓使用者能更加瞭解此參數的作用
//pararmeter label是用於function內使用，如1.中的name

//4.
//The return type is String.
//The return type is Double.
