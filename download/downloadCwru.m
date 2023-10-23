function downloadCwru(dataFolder)
    url = "https://github.com/XiongMeijing/CWRU-1/archive/refs/heads/master.zip";
    zipFilePath = "CWRU-1-master.zip";
    downloadFolder = "CWRU-1-master";
    websave(zipFilePath, url);
    unzip(zipFilePath);
    movefile(fullfile(downloadFolder, "Data"), dataFolder);
    delete(zipFilePath);
    rmdir(downloadFolder, 's');
end