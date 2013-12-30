<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Google Table Deneme </title>
    <script type="text/javascript" src="//www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load('visualization', '1.1', { packages: ['controls'] });
    </script>
</head>
<script type="text/javascript">
   

  
    function drawVisualization() {
        // Create and populate the data table.
        var dataAsJson =
        {
            cols: [
             { id: 'A', label: 'Name', type: 'string' },
             { id: 'B', label: 'Height', type: 'number' },
             { id: 'C', label: 'Coming', type: 'boolean' },
             { id: 'D', label: 'Time', type: 'timeofday' }],
            rows: [
              { c: [{ v: 'Dave' }, { v: 159.0, f: '159' }, { v: true, f: 'TRUE' }, { v: [12, 25, 0, 0], f: '12:25:00' }] },
            { c: [{ v: 'Peter' }, { v: 185.0, f: '185' }, { v: false, f: 'FALSE' }, { v: [13, 15, 0, 0], f: '13:15:00' }] },
            { c: [{ v: 'John' }, { v: 145.0, f: '145' }, { v: true, f: 'TRUE' }, { v: [15, 45, 0, 0], f: '15:45:00' }] },
            { c: [{ v: 'Moshes' }, { v: 198.0, f: '198' }, { v: true, f: 'TRUE' }, { v: [16, 32, 0, 0], f: '16:32:00' }] },
            { c: [{ v: 'Karen' }, { v: 169.0, f: '169' }, { v: true, f: 'TRUE' }, { v: [19, 50, 0, 0], f: '19:50:00' }] },
            { c: [{ v: 'Phil' }, { v: 169.0, f: '169' }, { v: false, f: 'FALSE' }, { v: [18, 10, 0, 0], f: '18:10:00' }] },
            { c: [{ v: 'Gori' }, { v: 159.0, f: '159' }, { v: true, f: 'TRUE' }, { v: [13, 15, 0, 0], f: '13:15:00' }] },
            { c: [{ v: 'Bill' }, { v: 155.0, f: '155' }, { v: false, f: 'FALSE' }, { v: [7, 40, 48, 0], f: '7:40:48' }] },
            { c: [{ v: 'Valery' }, { v: 199.0, f: '199' }, { v: true, f: 'TRUE' }, { v: [6, 0, 0, 0], f: '6:00:00' }] },
            { c: [{ v: 'Joey' }, { v: 187.0, f: '187' }, { v: true, f: 'TRUE' }, { v: [5, 2, 24, 0], f: '5:02:24' }] },
            { c: [{ v: 'Karen' }, { v: 190.0, f: '190' }, { v: true, f: 'TRUE' }, { v: [6, 14, 24, 0], f: '6:14:24' }] },
            { c: [{ v: 'Jin' }, { v: 169.0, f: '169' }, { v: false, f: 'FALSE' }, { v: [5, 45, 36, 0], f: '5:45:36' }] },
            { c: [{ v: 'Gili' }, { v: 178.0, f: '178' }, { v: true, f: 'TRUE' }, { v: [6, 43, 12, 0], f: '6:43:12' }] },
            { c: [{ v: 'Harry' }, { v: 172.0, f: '172' }, { v: false, f: 'FALSE' }, { v: [6, 14, 24, 0], f: '6:14:24' }] },
            { c: [{ v: 'Handerson' }, { v: 175.0, f: '175' }, { v: true, f: 'TRUE' }, { v: [6, 57, 36, 0], f: '6:57:36' }] },
            { c: [{ v: 'Vornoy' }, { v: 170.0, f: '170' }, { v: true, f: 'TRUE' }, { v: [13, 12, 0, 0], f: '13:12:00' }] }]
        };
        var data = new google.visualization.DataTable(dataAsJson);

        // Set paging configuration options
        // Note: these options are changed by the UI controls in the example.
        

        var stringFilter = new google.visualization.ControlWrapper({
            'controlType': 'StringFilter',
            'containerId': 'control1',
            'options': {
                'filterColumnLabel': 'Name'
            }
        });
        var categoryPicker = new google.visualization.ControlWrapper({
            'controlType': 'CategoryFilter',
            'containerId': 'control3',
            'options': {
                'filterColumnLabel': 'Name',
                'ui': {
                    'allowTyping': true,
                    'allowMultiple': true,
                    'selectedValuesLayout': 'belowStacked'
                }
            }            
        });

        var table = new google.visualization.ChartWrapper({
            'chartType': 'Table',
            'containerId': 'chart1',
            'options': { 'height': '13em', 'width': '20em', 'page': 'enable','pageSize':10 }
        });
        // Create the dashboard.
        var dashboard = new google.visualization.Dashboard(document.getElementById('dashboard')).
          // Configure the string filter to affect the table contents
          bind([stringFilter, categoryPicker], [table, table]).
          // Draw the dashboard
          draw(data);
    }

    google.setOnLoadCallback(drawVisualization);

    // sets the number of pages according to the user selection.



    </script>
  </head>
  <body style="font-family: Arial;border: 0 none;">
  
   
      
    <div id="dashboard">
      <table>
        <tr style='vertical-align: top'>
          <td style='width: 300px; font-size: 0.9em;'>
            <div id="control1"></div>
              <br />
              <br />
              <br />
            <div id="control2"></div>
            <div id="control3"></div>
          </td>
          <td style='width: 1200px'>
            <div style="float: left; height: 300px;" id="chart1" ></div>
            <div style="float: left;" id="chart2"></div>
            <div style="float: left;" id="chart3"></div>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
