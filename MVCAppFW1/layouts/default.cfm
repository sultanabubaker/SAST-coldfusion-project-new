<!DOCTYPE html>
<html lang="en">
    <cfoutput>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
            <link rel="stylesheet" href="/assets/css/bootstrap-theme.min.css" />
            <link rel="stylesheet" href="/assets/css/dataTables.bootstrap.min.css" />
            <link rel="stylesheet" href="/assets/css/font-awesome.min.css" />
            <link rel="stylesheet" href="/assets/css/custom.css" />
            <title>#rc.appSettings.title#</title>
        </head>
        <body role="document">
            <div class="container" role="main">
                #body#	<!--- body is result of views --->
            </div>
            <footer class="footer">
                <div class="container">
                    <p class="text-muted text-center">
                        <a href="https://github.com/cfvonner/Intro-to-MVC-ColdFusion", target="blank">
                            Find this code on github</a>
                    </p>
                    <p class="text-muted text-center small">
                        Powered by Adobe ColdFusion version #server.coldfusion.productversion#, 
                        FW/1 version #variables.framework.version#, Bootstrap 3, jQuery, 
                        DataTables, and Font Awesome.<br>
                        This request took <cfoutput>#getTickCount() - rc.startTime#</cfoutput>ms.
                    </p>
                </div>
            </footer>
        </body>
    </cfoutput>
    <script src="/assets/js/jquery-2.2.2.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/jquery.dataTables.min.js"></script>
    <script src="/assets/js/dataTables.bootstrap.min.js"></script>
    <script src="/assets/js/global.js"></script>
</html>