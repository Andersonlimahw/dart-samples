// Implementation:
enum EChannel { web, mobile, external }

enum EPaymentMethod { creditCard, money, invoice }

class Product {
  String name;
  double weight;
  double height;
  double price;
  EChannel channel;
  double? discountPercentage;
  double? priceWithDiscount;

  Product({
    required this.name,
    required this.weight,
    required this.height,
    required this.price,
    required this.channel,
    this.discountPercentage,
  });

  void calculateDiscount() {
    dynamic discounts = {
      EChannel.mobile: 15.0,
      EChannel.web: 10.0,
      EChannel.external: 5.0
    };

    double discount = discounts[channel] ?? 0.00;
    discountPercentage = discount;

    double discountAmount = price * ((100 - discount) / 100);
    priceWithDiscount = price - discountAmount;

    print(
        "calculateDiscount(): channel $channel, discount: $discount, discountAmount: $discountAmount, finalPrice: $priceWithDiscount, originalPrice: $price");
  }

  @override
  String toString() {
    return "Product: $name, price USD $price, channel: $channel";
  }
}

abstract class ProductMethods {
  void calculateSend({required double weight, required double height}) {}
  void handlePaymentMethods({required EChannel channel}) {}
}

class BookProduct extends Product implements ProductMethods {
  double? sentPrice;
  List<EPaymentMethod>? paymentMethods;

  BookProduct({
    required super.name,
    required super.weight,
    required super.height,
    required super.price,
    required super.channel,
    this.sentPrice,
    this.paymentMethods,
  });

  @override
  void calculateSend({required double weight, required double height}) {
    double sentTaxAmount = 0.1;
    sentPrice = (weight * height) * sentTaxAmount;
  }

  @override
  void handlePaymentMethods({required EChannel channel}) {
    dynamic allowdPaymentMethod = {
      EChannel.mobile: [
        EPaymentMethod.creditCard,
        EPaymentMethod.money,
        EPaymentMethod.invoice,
      ],
      EChannel.web: [EPaymentMethod.invoice],
      EChannel.external: [EPaymentMethod.money]
    };
    paymentMethods =
        allowdPaymentMethod[channel] ?? [EPaymentMethod.creditCard];
  }

  @override
  String toString() {
    return "BookProduct: $name, price USD $price, channel: $channel, $paymentMethods, $sentPrice";
  }
}

// Runner:

buildProducts({int amount = 2}) {
  for (var productItem = 0; productItem < amount; productItem++) {
    BookProduct book = BookProduct(
        name: 'One piece',
        price: 1000.00,
        weight: 10.5,
        height: 10.98,
        channel: EChannel.web);
    book.calculateDiscount();
    book.calculateSend(weight: book.weight, height: book.height);
    book.handlePaymentMethods(channel: book.channel);

    print(book.toString());

    Product product = Product(
        name: 'One piece $productItem',
        price: 10.00,
        weight: 10.50,
        height: 10.78,
        channel: EChannel.web);
    product.calculateDiscount();

    print(product.toString());
  }
}
