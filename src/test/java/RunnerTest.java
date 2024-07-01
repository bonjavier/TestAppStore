import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class RunnerTest {
    @Test
    protected void testParallel() {
        Results results = Runner.path("classpath:testApi")
                .outputCucumberJson(true)
                .tags("~@ignore")
                .karateEnv("dev")
                .parallel(4);
        generateReport(results.getReportDir());
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
        Date currentDate = new Date();
        String formattedDate = formatter.format(currentDate);
        String reportName = "Reporte_" + formattedDate;
        Configuration config = new Configuration(new File("build/karate-reports"), reportName);
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}