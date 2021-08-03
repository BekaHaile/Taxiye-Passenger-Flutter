import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';

/*
  Handles any business logic and data binding with Payment flow
  any Payment api requests are made here
*/
class PaymentController extends GetxController {
  final IPaymentRepository repository;
  PaymentController({required this.repository});

  final status = Status.success.obs;

  // payments
  final _paymentMethods = List<Payment>.empty(growable: true).obs;
  get paymentMethods => _paymentMethods.value;
  set paymentMethods(value) => _paymentMethods.assignAll(value);

  final _selectedPayment = Payment(name: 'cash_payment').obs;
  get selectedPayment => _selectedPayment.value;
  set selectedPayment(value) => _selectedPayment.value = value;

  @override
  void onInit() async {
    // Todo: Initialize and get any initial values here.
    getPaymentMethods();
    super.onInit();
  }

  getPaymentMethods() {
    //Todo: Get payment Methods
    paymentMethods = [
      Payment(name: 'cash'),
      Payment(name: 'cbe'),
      Payment(name: 'mpessa'),
      Payment(name: 'telebirr'),
    ];
  }
}
