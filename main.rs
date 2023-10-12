use std::time::Instant;
use std::env;
use std::f64::consts::PI;

fn calculate_pi(n: i32) -> f64 {
    let start = Instant::now();

    let numerator = 4.0;
    let mut denominator = 1.0;
    let mut operation = 1.0;
    let mut pi = 0.0;

    for _ in 0..n {
        pi += operation * (numerator / denominator);
        denominator += 2.0;
        operation *= -1.0;
    }

    let elapsed = start.elapsed();
    println!("Time elapsed: {}ms", elapsed.as_millis());

    pi
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() < 2 {
        return;
    }

    let n = match args[1].parse() {
        Ok(n) => n,
        Err(_) => return,
    };

    println!("pi default value: {}", PI);

    let pi = calculate_pi(n);

    println!("pi calculated locally: {}", pi);
}
