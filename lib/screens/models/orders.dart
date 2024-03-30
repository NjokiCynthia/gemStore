class Orders {
  String? orderNumber, trackingNumber, orderDate, quantity;
  int? status;
  double? subtotal;

  Orders({
    this.orderDate,
    this.orderNumber,
    this.quantity,
    this.subtotal,
    this.trackingNumber,
    this.status,
  });
}
