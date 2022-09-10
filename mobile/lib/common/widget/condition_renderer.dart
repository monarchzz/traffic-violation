import 'package:flutter/material.dart';

class ConditionRenderer {
  ConditionRenderer._();

  static Widget single({
    required bool condition,
    required Widget child,
  }) {
    return condition ? child : const SizedBox();
  }

  static Widget singleChoice({
    required bool condition,
    required Widget child,
    Widget? fallback,
  }) {
    return condition ? child : fallback ?? const SizedBox();
  }

  static List<T> list<T>({required bool condition, required List<T> children}) {
    return condition ? children : <T>[];
  }

  static Widget switchChoice({
    required String value,
    required Map<String, Widget> caseBuilder,
    required Widget? fallbackCase,
  }) {
    if (caseBuilder.containsKey(value)) {
      return caseBuilder[value]!;
    } else {
      return fallbackCase ?? const SizedBox();
    }
  }

  // static Widget multipleChoice({}){}
}
