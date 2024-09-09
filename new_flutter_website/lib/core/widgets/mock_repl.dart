class MockRepl {
  MockRepl(this.onOutput) {
    onOutput('Last login: Sat Feb 17 21:01:21\r\n');
    onOutput('\n');
    onOutput('lucadorin-anton@Luca-CV ~ % ');
  }

  final void Function(String data) onOutput;

  void write(String input) {
    for (var char in input.codeUnits) {
      switch (char) {
        case 13: // carriage return
          onOutput.call('\r\n');
          onOutput.call('\$ 13');
          break;
        case 127: // backspace
          onOutput.call('\b \b');
          break;
        default:
          onOutput.call(String.fromCharCode(char));
      }
    }
  }
}
