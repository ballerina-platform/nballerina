import ballerina/io;
import ballerina/file;

public type Error error<Diagnostic>;

public type Printer object {
    public function print(Error diagnostic);
    public function close() returns (file:Error|io:Error)?;
};

public class StdErrorPrinter {
    *Printer;

    public function print(Error diagnostic) {
        foreach string line in format(diagnostic.detail()) {
            io:fprintln(io:stderr, line);
        }
    }

    public function close() returns (file:Error|io:Error)? {}
}

public class HtmlPrinter {
    *Printer;
    private final Error[] diagnostics = [];
    private final string outputFilename;

    public function init(string outputFilename) {
        self.outputFilename = outputFilename;
    }

    public function print(Error diagnostic) {
       self.diagnostics.push(diagnostic);
    }

    public function close() returns (file:Error|io:Error)? {
        string[] body = [];
        self.addErrorReportPrefix(body);
        foreach Error err in self.diagnostics {
            check self.addErrorToReport(err, body);
        }
        self.addErrorReportSuffix(body);
        check io:fileWriteLines(self.outputFilename, body);
    }

    private function addErrorToReport(Error err, string[] body) returns file:Error? {
        string[] errorLog = format(err.detail());
        string dataLine = errorLog[0];
        int fileEnd = <int>dataLine.indexOf(":");
        string filePath = check file:getAbsolutePath(dataLine.substring(0, fileEnd));
        string fileName = check file:basename(filePath);
        body.push("<tr>");
        body.push(string `<td><a href="file:///${filePath}">${fileName}</a></td>`);
        body.push(string `<td><pre>${"<br>".'join(...errorLog)}</pre></td>`);
        body.push("</tr>");
    }

    private function addErrorReportPrefix(string[] body) {
        body.push("<html>");
        body.push("<head>");
        self.addErrorReportStyles(body);
        body.push("<title> Error logs </title>");
        body.push("</head>");
        body.push("<body>");

        body.push("<table>");
        body.push("<tr>");
        body.push("<th>File</th>");
        body.push("<th>Log</th>");
        body.push("</tr>");
    }

    private function addErrorReportStyles(string[] body) {
        body.push("<style>");
        body.push("table { width: 100%; padding: 10px }");
        body.push("td,th { border: 1px solid #969393; padding: 4px; }");
        body.push("tr:nth-child(even){background-color: #f2f2f2;}");
        body.push("th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #874c4c; color: white;}");
        body.push("</style>");
    }

    private function addErrorReportSuffix(string[] body) {
        body.push("</table>");
        body.push("</body>");
        body.push("</html>");
    }
}

