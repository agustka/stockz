// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "application_name": MessageLookupByLibrary.simpleMessage("Stockz"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "date_format_default":
            MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
        "date_short_format":
            MessageLookupByLibrary.simpleMessage("MMMM d, yyyy"),
        "date_short_format_no_year":
            MessageLookupByLibrary.simpleMessage("dd MMMM"),
        "date_short_format_no_year_single_digit":
            MessageLookupByLibrary.simpleMessage("d. MMMM"),
        "error_loading_feature_heading":
            MessageLookupByLibrary.simpleMessage("Failed to connect"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "page_not_found_message": MessageLookupByLibrary.simpleMessage(
            "This request has been closed temporarily, please try again shortly. We apologise for any inconvenience this may cause. Code 560."),
        "retry": MessageLookupByLibrary.simpleMessage("Try again"),
        "semantics_drag_down_to_dismiss_drawer":
            MessageLookupByLibrary.simpleMessage("Drag to dismiss the drawer."),
        "semantics_tap_to_dismiss":
            MessageLookupByLibrary.simpleMessage("Tap anywhere to dismiss")
      };
}
