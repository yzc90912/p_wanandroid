import 'package:flutter/material.dart';
import 'package:p_wanandroid/data/model/category_entity.dart';

@immutable
abstract class CategoryEvent {}

class ChangeCategoryEvent extends CategoryEvent {
  final int currentIndex;
  final List<Article> articles;

  ChangeCategoryEvent({required this.currentIndex, required this.articles});
}
