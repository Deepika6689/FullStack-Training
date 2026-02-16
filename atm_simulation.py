import time

password = 1234
balance = 10000
print("welcome")
print("insert the card")
a = int(input("card? 1.yes,2.no"))
if a == 1:
    print("card is inserted")
    b = int(input("enter the pin:"))
    if b == password:
        print("password is crt")
        c = int(input("select language:1.kannada,2.english,3.telugu"))
        if c == 1:
            print("kannada selected")

        elif c == 2:
            print("english selected")
        elif c == 3:
            print("telugu selected")
        else:
            print("invalid option")

        print("1. Balance Enquiry")
        print("2. Withdrawal")

        choice = int(input("select option:"))

        if choice == 1:
            print("your balance is:", balance)

        elif choice == 2:
            amt = int(input("enter the amount to withdraw:"))
            if amt <= balance:
                print("Your transaction is being processed...")
                time.sleep(5)

                balance -= amt
                print("collect ur cash")
                check = int(input("do u want to check ur balance: 1.yes,2.no"))
                if check == 1:
                    print("your remaining balance is:", balance)
                else:
                    print("thank u")
            else:
                print("invalid balance")

    else:
        print("wrong password")
else:
    print("card is not inserted")
