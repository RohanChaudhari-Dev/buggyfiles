public class BuggyDemo {

    public static void main(String[] args) {
        System.out.println("Starting buggy Java demo...")

        int number = "10"; // BUG 1: incompatible types (String assigned to int)

        System.out.println("Result: " + calculate(number));
        System.out.println("Unknown value: " + missingVariable); // BUG 2: undefined variable
    }

    public static int calculate(int value) {
        if (value > 0) {
            return value * 2;
        }
        // BUG 3: missing return statement when value is zero or negative
    }

    public static void greet(String name) {
        System.out.println("Hello, " + name);
    }

    public static void testArray() {
        int[] values = {1, 2, 3};
        System.out.println(values[5]); // BUG 4: array index out of bounds at runtime
    }
}
