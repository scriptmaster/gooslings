// functions4
// The store is having a sale where if the price is an even number, you get
// 10 off, but if it's an odd number, it's 3 off.
// Make me compile!
// I AM NOT DONE

fn main() {
    let original_price = 51;
    print("Your sale price is ", sale_price(original_price));
    assert(sale_price(original_price) == 48);
    assert(sale_price(40) == 30);
}

fn sale_price(price: i64) -> i64 {
    if price % 2 == 1 { price - 3 } 
}
