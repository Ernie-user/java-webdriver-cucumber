package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class JavaStepDefs {
    @Given("I say hello world")
    public void iSayHelloWorld() {
        System.out.println("Hello world!");
    }

    @And("I say {string}")
    public void iSay(String message) {
        System.out.println(message);
    }

    @And("I call {int} times")
    public void iCallTimes(int number) {
        System.out.println(number);
    }

    @And("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String str1, String str2) {
        System.out.println("str1: " + str1);
        System.out.println("str2: " + str2);
        System.out.println(str1.toUpperCase());
        System.out.println(str2.toUpperCase());
        System.out.println("str1's length is " + str1.length());
        System.out.println("str2's length is " + str2.length());
        System.out.println(str1.equals("my VAR"));
        System.out.println(str1.equalsIgnoreCase("my VAR"));
        System.out.println(str1.contains("my V"));
    }


    @And("I calculate numbers")
    public void iCalculateNumbers() {

        System.out.println(10 / 3);
        System.out.println(21 % 3);

        int i = 5;
        Integer index = 5;

        System.out.println(i == index);

        double d = 5.0;
        Double doubleValue = 5.0;

        System.out.println(index == d);
        System.out.println(index.equals(d));


        System.out.println(15 / 3);
        System.out.println(15 / 3.0);

        int num1 = 5;
        int num2 = 10;

        System.out.println(num1 + num2);
        System.out.println(num1 - num2);
        System.out.println(5.0 / num2);
        System.out.println(num1 * num2);

        int sum = 15;
        int difference = -5;
        int quotient = (int) 0.5;
        int product = 50;
    }

    @And("I compare colors")
    public void iCompareColors() {

        String[] notFavoriteColor = {"blue"};
        String[] favoriteColor = {"white"};

        System.out.println(notFavoriteColor == favoriteColor);
    }

    @And("I play with grocery list")
    public void iPlayWithGroceryList() {
        String[] groceryList = {"butter", "eggs", "milk", "ham"};

        for (String s : groceryList) {
            System.out.print(s + " ");
        }
        System.out.println();
        System.out.println(groceryList[0]);
        System.out.println(groceryList[2]);
    }

    @And("I print {string} th day of week")
    public void iPrintThDayOfWeek(String weekDay) {
        String[] weekDays = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

        System.out.println(weekDays[6]);
    }

    @And("I print if number {string} is positive")
    public void iPrintIfNumberIsPositive(String num2) {
        int num = 35;

        if (num > 0) {
            System.out.println("Positive");
        }
        else {
            System.out.println("Negative");
        }
//        test comment
//        test comment 2
    }
}
