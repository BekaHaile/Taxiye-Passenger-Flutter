import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';

/*
  Handles any business logic and data binding with orders flow
  any orders api requests are made here
*/
class OrdersController extends GetxController {
  final ICommonRepository repository;
  OrdersController({required this.repository});

  final status = Status.success.obs;

  final _orderStatus = OrderStatus.completed.obs;
  get orderStatus => _orderStatus.value;
  set orderStatus(value) => _orderStatus.value = value;

  final _orders = List<Order>.empty(growable: true).obs;
  get orders => _orders.value;
  set orders(value) => _orders.assignAll(value);

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    super.onInit();
    getMyOrders();
  }

  getMyOrders() {
    // Todo: Get my ordes.
    orders = [
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
      Order(
        driver: Driver(userName: 'Cameron Williamson', rating: 4.9),
        orderTime: DateTime.now(),
        amount: 150.0,
      ),
    ];
  }
}
