class Orders {
  String? orderNumber, trackingNumber, orderDate, status;
  int? quantity;
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
