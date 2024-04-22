import 'package:flutter/material.dart';
import 'package:patientrecordmanagementapp/core/constants/strings.dart';

enum SearchFieldType {
  normal(fontSize: 16.0),
  appBar(
      height: 56.0,
      fontSize: 14.0,
      // showLeading: false,
      fillColor: Color(0xF0E6DE));

  const SearchFieldType(
      {this.height, this.fontSize, this.showLeading = true, this.fillColor});
  final double? height;
  final double? fontSize;
  final bool showLeading;
  final Color? fillColor;
}

class SearchFieldWithOptions extends StatefulWidget {
  const SearchFieldWithOptions(
      {Key? key,
      this.initialValue,
      this.onTap,
      this.searchFieldType = SearchFieldType.normal,
      required this.hintText,
      required this.onChanged})
      : super(key: key);
  final void Function()? onTap;
  final String? initialValue;
  final String hintText;
  final SearchFieldType searchFieldType;
  final Function(String?)? onChanged;

  @override
  State<SearchFieldWithOptions> createState() => _SearchFieldWithOptionsState();
}

class _SearchFieldWithOptionsState extends State<SearchFieldWithOptions> {
  TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchFocusNode.dispose(); // Dispose of the FocusNode when it's no longer needed.
    super.dispose();
  }

  bool isSearching = false;
  onChanged(String? newValue) {
    if (newValue?.isEmpty ?? false) {
      setState(() {
        isSearching = false;
      });
    } else {
      setState(() {
        isSearching = true;
      });
    }
    widget.onChanged!(newValue);
  }

  clearSearch() {
    setState(() {
      _searchController.clear();
      widget.onChanged!(emptyString);
      isSearching = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.initialValue);
    if(widget.searchFieldType==SearchFieldType.normal){
      _searchFocusNode.requestFocus();
    }

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          clipBehavior: (widget.searchFieldType==SearchFieldType.appBar)?Clip.hardEdge:Clip.none,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
          height: widget.searchFieldType.height,
          width: size.width,
          decoration: (widget.searchFieldType == SearchFieldType.appBar)
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  // color: widget.searchFieldType.fillColor,
                  // color: Color(0xFFF0E6DE)
                  // color: Color(0xF0E6DE)
                  )
              : null,
          child: TextFormField(
            focusNode: widget.searchFieldType==SearchFieldType.normal?_searchFocusNode:null,
              onTap: widget.onTap,
              controller: _searchController,
              onChanged: onChanged,
              style: TextStyle(
                fontSize: widget.searchFieldType.fontSize ?? 16,
              ),
              //validator: widget.onValidate,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  // contentPadding: EdgeInsets.zero, // Remove extra padding
                  enabledBorder: InputBorder.none, // Remove the line
                  focusedBorder: InputBorder.none,
                  suffixIcon: isSearching
                      ? IconButton(
                          icon: const Icon(Icons.close_outlined),
                          onPressed: clearSearch,
                        )
                      : null,
                  //border: InputBorder.none,
                  prefixIcon: widget.searchFieldType==SearchFieldType.appBar
                      ? Icon(
                          Icons.search,
                          color: Theme.of(context).colorScheme.onSurface,
                        )
                      : null,
                  hintText: widget.hintText,
                  hintStyle: Theme.of(context).textTheme.bodyLarge),
            ),
          ),

      ],
    );
  }
}
