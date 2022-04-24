<!DOCTYPE html>
<cfsilent>
    <cfquery name="getBeers">
        SELECT  be.id
                ,be.breweryId
                ,br.name AS breweryName
                ,be.name
                ,be.type
                ,be.abv
                ,be.ibu
        FROM Beer be
        INNER JOIN Brewery br ON be.breweryId = br.id
        ORDER BY be.name
    </cfquery>
</cfsilent>

<html lang="en">
    <head>
        <cfinclude template="header.cfm">
        <title>
            <cfoutput>#request.title#</cfoutput>
        </title>
    </head>
    <body role="document">
        <cfoutput>
            <div class="container" role="main">
                <div id="home" class="page-header">
                    <div class="container">
                        <ol class="breadcrumb">
                            <li>
                                <a href="/">Home</a>
                            </li>
                            <li>
                                <a href="index.cfm">#request.h1Title#</a>
                            </li>
                            <li class="active">
                                Beer List
                            </li>
                        </ol>
                    </div>
                    <h1>#request.h1Title#</h1>
                </div>
                <div class="container space-bottom">
                    <a class="btn btn-default btn-sm" href="beer-edit.cfm" role="button">
                        <i class="fa fa-plus-square text-success" aria-hidden="true">
                        </i>
                        <span class="text-success">
                            Add Beer
                        </span>
                    </a>
                </div>
                <div class="container">
                    <table id="beers" 
                           class="table table-bordered 
                        table-striped table-hover table-condensed table-dt">
                        <thead>
                            <th>
                                Name
                            </th>
                            <th>
                                Brewery
                            </th>
                            <th>
                                Type
                            </th>
                            <th>
                                <a href="##" data-toggle="tooltip" 
                                    title="Alcohol By Volume">ABV</a>
                            </th>
                            <th>
                                <a href="##" data-toggle="tooltip" 
                                    title="International Bitterness Units">IBU</a>
                            </th>
                            <th data-orderable="false">
                            </th>
                        </thead>
                        <tbody>
                            <cfloop query="getBeers">
                                <tr>
                                    <td class="text-left">
                                        #getBeers.name#
                                    </td>
                                    <td class="text-left">
                                        #getBeers.breweryName#
                                    </td>
                                    <td class="text-left">
                                        #getBeers.type#
                                    </td>
                                    <td class="text-right">
                                        #getBeers.abv#
                                    </td>
                                    <td class="text-right">
                                        #getBeers.ibu#
                                    </td>
                                    <td class="text-center text-nowrap">
                                        <a href="beer-edit.cfm?edit&beerId=#getBeers.id#" title="Edit" 
                                           role="button">
                                            <i class="fa fa-pencil-square-o text-success" 
                                               aria-hidden="true">
                                            </i>
                                        </a>
                                        &nbsp;
                                        <a href="beer-edit.cfm?delete&beerId=#getBeers.id#" 
                                           title="Delete" role="button">
                                            <i class="fa fa-trash text-danger" aria-hidden="true">
                                            </i>
                                        </a>
                                    </td>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                </div>
            </div>
        </cfoutput>
        <cfinclude template="/ProceduralApp/footer.cfm">
    </body>
</html>