// quiz1
// Mary is buying apples. The price of an apple is calculated as follows:
//  - An apple costs 2 each
//  - But if Mary buys more than 40 apples, the price of each apple in the
//    entire order is reduced to 1!
// Write a function that calculates the price of an order of apples given the
// quantity bought. No hints this time!
// I AM NOT DONE

fn calculate_price_of_apples(n: i64) -> i64 {
    0
}

fn main() {
    assert(calculate_price_of_apples(35) == 70);
    assert(calculate_price_of_apples(40) == 80);
    assert(calculate_price_of_apples(41) == 41);
    assert(calculate_price_of_apples(65) == 65);
    print("quiz1 ok");
}
