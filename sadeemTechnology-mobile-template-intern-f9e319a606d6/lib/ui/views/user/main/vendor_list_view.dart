import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intern/core/models/vendors/vendor.dart';

class VendorListView extends StatefulWidget {
  Map<String, dynamic> parameters;
  VendorListView({required this.parameters});
  @override
  _VendorListViewState createState() => _VendorListViewState();
}

class _VendorListViewState extends State<VendorListView> {
  final _PagingController=
  PagingController<int, Vendor>(firstPageKey: 1);

  @override
  void initState() {
    _PagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {

  }

  @override
  Widget build(BuildContext context) =>
      PagedListView<int, Vendor>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Vendor>(
          itemBuilder: (context, item, index) =>Container(child: Text(item.id!),)
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}