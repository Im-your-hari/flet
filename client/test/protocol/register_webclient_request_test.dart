import 'dart:convert';

import 'package:flet_view/protocol/message.dart';
import 'package:flet_view/protocol/register_webclient_request.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("RegisterWebClientRequest serialize to message", () {
    final m = Message(
        action: MessageAction.registerWebClient,
        payload: RegisterWebClientRequest(pageName: "test-page1"));

    final j = json.encode(m);
    expect(j,
        '{"action":"registerWebClient","payload":{"pageName":"test-page1","pageHash":null,"pageWidth":null,"pageHeight":null,"windowWidth":null,"windowHeight":null,"windowTop":null,"windowLeft":null,"isPWA":null,"sessionId":null}}');
  });
}
