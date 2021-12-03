import ballerina/io;
import ballerina/file;

public type Printer object {
    public function print(Diagnostic diagnostic);
    public function close() returns (file:Error|io:Error)?;
};

public class ConsolePrinter {
    *Printer;
    private final io:stderr|io:stdout outputStream;

    public function init(io:stderr|io:stdout outputStream) {
        self.outputStream = outputStream;
    }

    public function print(Diagnostic diagnostic) {
        foreach string line in format(diagnostic) {
            io:fprintln(self.outputStream, line);
        }
    }

    public function close() returns (file:Error|io:Error)? {}
}

public class HtmlPrinter {
    *Printer;
    private final Diagnostic[] diagnostics = [];
    private final string outputFilename;

    public function init(string outputFilename) {
        self.outputFilename = outputFilename;
    }

    public function print(Diagnostic diagnostic) {
       self.diagnostics.push(diagnostic);
    }

    public function close() returns (file:Error|io:Error)? {
        string[] body = [];
        self.addErrorReportPrefix(body);
        foreach Diagnostic diagnostic in self.diagnostics {
            check self.addDiagnosticToReport(diagnostic, body);
        }
        self.addErrorReportSuffix(body);
        check io:fileWriteLines(self.outputFilename, body);
    }

    private function addDiagnosticToReport(Diagnostic diagnostic, string[] body) returns file:Error? {
        string[] errorLog = format(diagnostic);
        string dataLine = errorLog[0];
        int fileEnd = <int>dataLine.indexOf(":");
        string filePath = check file:getAbsolutePath(dataLine.substring(0, fileEnd));
        string fileName = check file:basename(filePath);
        string[] errorLine = [
            "<tr>",
            string `<td><a href="file:///${filePath}">${fileName}</a></td>`,
            string `<td><pre>${"<br>".'join(...errorLog)}</pre></td>`,
            "</tr>"
        ];
        body.push(...errorLine);
    }

    private function addErrorReportPrefix(string[] body) {
        body.push("<html>", "<head>");
        self.addErrorReportStyles(body);
        body.push("<title> Error logs </title>", "</head>", "<body>");

        string[] tableHeader = [
            "<table>",
            "<tr>",
            "<th>File</th>",
            "<th>Log</th>",
            "</tr>"
        ];
        body.push(...tableHeader);
    }

    private function addErrorReportStyles(string[] body) {
        string[] styles = [
            "<style>",
            "table { width: 100%; padding: 10px }",
            "td,th { border: 1px solid #969393; padding: 4px; }",
            "tr:nth-child(even){background-color: #f2f2f2;}",
            "th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #874c4c; color: white;}",
            "</style>"
        ];
        body.push(...styles);
    }

    private function addErrorReportSuffix(string[] body) {
        string[] suffix = [
            "</table>",
            "</body>",
            "</html>"
        ];
        body.push(...suffix);
    }
}

