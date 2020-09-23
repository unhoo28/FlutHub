import 'package:flutter/cupertino.dart';

abstract class BasePresenter<V extends State> {
  bool enterprise;

  V view;

  attachView(final V v) {
    if (v == null) {
      print("v is null");
    }
    view = v;
  }

  bool isEnterprise() {
    return enterprise;
  }

  setEnterprise(bool enterprise) {
    this.enterprise = enterprise;
  }

  V getView() {
    return view;
  }
}
